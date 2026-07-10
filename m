Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D46F4195A4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783698514; cv=none; b=Q/e5YWJbQsDgekKht13WJjCc2mgdoV2L6J2eMEgCXG+D2v5haSdETYC7bdYSqMOj/rDfYrYyEVRHol5Mxpmjsz9FOGwfInsk4ONEcnt8GUpF5RyZ9l2S/KrVA0/J8O4S2lkXDY/5h/ccnvUuhcoda8Tt2mCh45mCiPpa51OTv+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783698514; c=relaxed/simple;
	bh=v3lFZUDQcHkXJniYshaNaghFCkoQMRjZW9OtNPtvEk8=;
	h=To:Subject:From:Message-Id:Date; b=NBRm2w6AU6x2OEHvPxPZ2bti0s0s7smUmBAd74gCFTZSpSMMwUcwFPxIGdbkWun7KWrHFd0T5OSWjG9ARadWzMzn6AGsVFqIG41jjLkw0OWn8kQceaH0NYwOF4z5LDjwq2tl5dJ5ebvGQdiLWEKnhv0H3ITZEE0aNg9xh6CSMDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr9B8GRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr9B8GRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D274FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783698513;
	bh=v3lFZUDQcHkXJniYshaNaghFCkoQMRjZW9OtNPtvEk8=;
	h=To:Subject:From:Date:From;
	b=Sr9B8GRvMpViLUn9qDq3YxZzEyS4YrVupyPhjN81i6pLgTskORmOfd8oLp1l7Ej5V
	 CaKkjCG8Kb56u3sMM0xkMgxQI5pk4Z57IfTHu6B8VO7vN3ycduehm+5f9dWz240flL
	 5SULNI5OCwPrf6Y6KJooBHnCeZgsKiHWIKTmD9jOSrNI+AmXMR+kQncavyLehxBkd+
	 l7wM2J/550z0v9yYg5ksqJ2dz+xi3eAXZTVRmD/KbT6hf/RFn4KJbDHlgUUVObH4dz
	 B8SLpc94vEEiLDQ0aWnZMg8P5i3bjNlNFNVDTEYLZ3k6OPiGzNXLYXVloI/HgDNUBF
	 iWasudBbusRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369851368.10627.16544338109558834485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72da97a23faff3a8fa157be00cb5df7732156921e80432be5c8061c51400a902
Date: Fri, 10 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783698513
