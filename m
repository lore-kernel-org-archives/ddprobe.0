Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E541393DC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762880994; cv=none; b=dTfn9/FPFl0WiFRE1wHGweFV6f0VQtvHUbifeH+6hKDOn5KJG/TwQDoecCcR2S07k73lME1ybBSm3LnlLleiTq/BZdY/xbjxJoQ0Iu772Aqu+CL1OxXPHikvo5aoYL4LyfGBsn+6btPwueAioAJ6rXcHSxB/nayvJj7XcehFAoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762880994; c=relaxed/simple;
	bh=Qx8VxJIB2JBYLBfjLm6CEB1LLED1Dkq3oiP0M0Am+jM=;
	h=To:Subject:From:Message-Id:Date; b=utC9vqxZ4kxcewCjfC0V1Pe3G0ia2vmOPDfQliQ2RTUC6PzOLVM3ipVY2ifP0VFMAxHz+I/MhxZiNxSiDGVOuFWutHJdAfR9VM78GdHWzVxJc/Qc+2yoD8k0ISlVBDKRuz0eZNGgDhOJDMx/QufErXMEyz3Iy1H0V2dCoG0VtWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XufiOqNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XufiOqNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762880993;
	bh=Qx8VxJIB2JBYLBfjLm6CEB1LLED1Dkq3oiP0M0Am+jM=;
	h=To:Subject:From:Date:From;
	b=XufiOqNl4G5+6utb4iHbEjhOpat5/ZPaZTvOEZU2vSd0hhbPH9nmzW7EXSzFEYDYi
	 QLM45w5sVzEDmTffZjntSb7/fDBkVQLqi+Gb5INsM81pHJd+CvEzDcqFtkLKG/klwx
	 tG0A6jl9UQq8KCm8k6lsPmTApEXPJr6ErScj2PJkxuDxjFLHo+wVi1vjK78tvrqQTA
	 5EO8pSXa0pEExcsyjFKPIdAjWgho5/8N0rgPH4DVLMTk7L4idDv+9N03qOlNw8Wu+T
	 c5d8gnvklefUh12+8kpRtPXPP27GKsJzQ6RFFR92AyLwXeDoCTzw8h91NLqIIJvuwA
	 ueIPA20LsPOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96330CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288099360.5909.6543075477070569092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c15f5dda0929409e6889d9bd6d596f45b88b14cbae8fdf86b009a8cfdf02341
Date: Tue, 11 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762880993
