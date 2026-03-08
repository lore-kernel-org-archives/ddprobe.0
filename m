Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131D93469F6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772956494; cv=none; b=paE7ItaVP0w6/MZdfWM/SJbIGUawy2PNNyAe6jvajr7R2S7CAZJRKkN2EBIdoXOAcHDqNQUqK8m9+xnFTw19WGYAMXOlwozBCdtF1D+nfZ2M3nlv3ZnyHTFieD6RrZe6DzB+q7PfIR/PtrraixPMu6iORdMrZvDGw8J0KLZD8Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772956494; c=relaxed/simple;
	bh=iRUXMBPXjaTpUI6yz4fAgRIikuLJl+f0QF0VweVcS9o=;
	h=To:Subject:From:Message-Id:Date; b=MGqca9kmh8R8Qi0ouSs6IbUjk/gF6QFFI6YH1QhiPEn2znnnn51joEsJ6oiKzTGJwsX4/hUWZw21XCvQdv+Rqg4Zg0SaTk3aX0z+vd5eyvI9umaUuIUGeb1cwXL5rXP60IORHJ5bAVEiq6GmpFBVh4xpTzX+UFUGeVRon2dLqCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqEMJNGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqEMJNGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8CDC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772956493;
	bh=iRUXMBPXjaTpUI6yz4fAgRIikuLJl+f0QF0VweVcS9o=;
	h=To:Subject:From:Date:From;
	b=kqEMJNGbIH68u8+VbZfFPJ03zvsnqoOvPvtZODWK0zYTNpclJeRPXJa9znQFkgBco
	 x6gxI6Ktvhq7GgYdM2o0nJQRGu1wHUhddpRNdezmw9O8ple+MVr44zvk+S09zWxrEe
	 WcplcUSUUfN7ZUHxSJ+ktrO0iDUhFaZJJl3mvGi6FP/+kr9m+8RbdyM+mktsRhVr0C
	 w43grwWdKk0PPJjnyDs7M+7jVO3QU81AsmFtgqiyqdJFUI9eue7DNTf9BRMco40voC
	 n7PR5evIJdCpUmJVbhF3UOozBrSqmuIHn1679wsWshOvhjZQd+GlB1TA1Ajj7M+PZ7
	 qlNAjsiQC2doQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B5AF55126
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295649358.15398.9860983268890069009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33a60ba5ec460fb9c3af9cf04f3a879ff6be3688047a067cc492aa63082d9e3
Date: Sun, 08 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772956493
