Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9583385B2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776700054; cv=none; b=p70RC8mh46nCfEyDmGmEmAM+k/Z9O6TYrxj2KbaWq2bDwInQ58qGI2X8b9qv9tzSRaDxfisYgfR5Xz6MeY5v0fd09X6WF/CW/P0qNKiFrm5Ct9fHQIuSXr0tFkxrspUAqoddmDNv2EI51EGZdRgEfwD1cWlon5T0aLE6D28BOl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776700054; c=relaxed/simple;
	bh=9SjuupOxF8Q1C3Ga8fMtkDbe5OXCnMm7npQVSXveuqs=;
	h=To:Subject:From:Message-Id:Date; b=oVgiQQNzItOIFiEqGIeMJgqAiUXR1SAN7hO6wzwHh/r21VogOcq2AEgM/PcFDz8uIyMIlxY0s4db4FojDcGaYjNkpCb2grJisHDJoW6EzCq4cr7jFEtPRjOL/d8r7Gjm5tVe96EqcYDiAzAB/8oSoisaIOgtOVm++t7ChEs1jvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN7phBnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN7phBnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B2EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776700053;
	bh=9SjuupOxF8Q1C3Ga8fMtkDbe5OXCnMm7npQVSXveuqs=;
	h=To:Subject:From:Date:From;
	b=qN7phBnWSiFMNJIYzORwiSaXWUd6ALHDAXWZBclJoOwPmOnNBmwrME7h3lfywIMga
	 doTpcAy/mUqpgkY/lOH1h/uKK++VTxGasSDAG1Ep5T8n+M6Jso71DhN8lnFHLSIxdW
	 idt/6s9o+kAewNpCzxhU06waUTOsCeMWiMUi2h7HVmUXQ+bOIjLYmTM86KYqe4KZ/I
	 fNVCijQpZMbbiWb04CUgV6PkII1iY/AX3tyjOvr9FJ76+JfWwhuZO92oMPPmEpfk9J
	 prFvYjllL3bsHOcMad4IMKZNiUH2zWuPtXhwLljwZlQUWgPfnmwRo3rDabTa9ZJsoS
	 hoTwselPCqHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE4F588E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670005369.29375.16996702858934858509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d16519f633ee883e03676523e4344c64de145c63ec3418035945f023a00570b
Date: Mon, 20 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776700053
