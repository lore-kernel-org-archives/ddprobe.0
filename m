Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD11BD035
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015994; cv=none; b=GWUOoTawUWBGSTW67hwQl/qM08t0iR9YJMAnpJEjT4pegbFomYM+y6bicP1lpn9x4uEeRoE35V/kiOoxhvZI9QAKR3d/aO3+F3Cb0/2uw2bTlPfSWQLdQC8W6EYxjVEYULPGadIaN4rPg7RDVV7sqCOgYEx9wxmcXpWB2LlnwQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015994; c=relaxed/simple;
	bh=WgCYrSn30+vAXVKOyQYwD5dxCRf6dnPhLnrd73heVfM=;
	h=To:Subject:From:Message-Id:Date; b=n8Gp9hZT6+X65LteqVwo8T/S1SFPWe3ToKwRH9LYVsi9y8JIMMwlk/XHmPBLcXJvOuxUlZ5CoOtNl+aSMa4SU6hhYc3ng0gZeaC9rNjTcqGliEAaE3umvx7/CEpfRA5D7EngjGQfeo96Z76p5JPw4jauud2G2Ce6b7EGekRpzts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHibPPNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHibPPNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C23C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757015993;
	bh=WgCYrSn30+vAXVKOyQYwD5dxCRf6dnPhLnrd73heVfM=;
	h=To:Subject:From:Date:From;
	b=SHibPPNpStVRF/s0Tb8F+FRdtxU1fSbVlIE/tDOOFsreKDSqy4bxRTjsM7IwRBwFX
	 +SaWPVqqgraAQIZ8DTrX0uJnnHjI7VlL/W5hNt2IxpFl3I/tqAvmYacbv0wPSHd1In
	 80itLJpo8AIyCghjH3oInLpcxvL3WO9uKW11BBDUNmRnQbDAa8vW4AojZ+gXIWXG5H
	 F9TXtLW2VtIAYh1mgRgZPefuOORIcy9/gIvSyY/3jAAg91RCLguKDayzxUI965mbrj
	 N5Uv+nxPfmhS6oeIMyDlplNTX4LPh4Zh+gsfI5vkWcnAE/Ih5Y0zrUZm2Tazh7PH0Y
	 W4bOEfr+Z12hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9DCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701599357.8140.10640100021545508019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af8b6fdc7ef9d02498fded9b4a4c77fc94a27ccda85ed1287625ff549cbcce3
Date: Thu, 04 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757015993
