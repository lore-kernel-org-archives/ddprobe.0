Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF627E0FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783794514; cv=none; b=S95BwecR4LBrz1HLiv1JVaOUx3fLORw22aALWd/HmRfRvOKp9AyUwP5dtGlpK8p4Wk0livM4UExRVBo0NxYbN9I9ciECXrGGuklpbR6mDNSdRmC10wEKTuAui/pHc8H5NUNjjoHXxFn/M+lkdFkA/R4z+JiNn77/JFJmUYBGUGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783794514; c=relaxed/simple;
	bh=415QscvQuLQxg/seFVtu7wnt2MpL4YmN4Rj2WrZixvc=;
	h=To:Subject:From:Message-Id:Date; b=cE2irr9fIwYr8AREplUW97dQR6qJ0OMXmmuQySgtAFX2TG3wvFs2vlPyfxCf7J0zRNQYv6osMJW7txZAiNW0sBTJeVde0vs8nvaE4+QxyPVUSZRN1mpuWKe07AIgNkQ2yUTe3kncq+XCONE9etRXgWwLGHcQzkD0GlVFE7y1KCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJogMc9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJogMc9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50F1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783794513;
	bh=415QscvQuLQxg/seFVtu7wnt2MpL4YmN4Rj2WrZixvc=;
	h=To:Subject:From:Date:From;
	b=VJogMc9tsgIoq02FZYgH3AqTt+SunwUyyevm5tSiII0DsMEpQd/imTOuKP3ze7y0x
	 Y3WF40zyM7ltmST13jMUKiu4Ds9ooB9arv/z7Nwy0QERjpI3t8ULYTa/9b9fe6BLyE
	 yOTREZ8/X2ws8TZsqBPNDbwDKuybE7sCgYQ4dh8PNffkyPsIX/kZN/rX85vdmaxDta
	 hjHAMRcQT4w518atR4Zsa0C8fdIIxkgDaClMO2Vl2Bkw5SzOJa/j//c21z1REVeIHH
	 2WV1h6KFfCRz9A+EZ3whd8bIoQGAFaAWf5VVC+kNmfzRtSUVTK4MdG+goieB313fEB
	 Xyknt6+T1GfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE232C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379451368.22341.1239256704064799599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb275442b8dadca6d449fa4cb0c6db3656704d5cfeebca155d059272dbc1909a
Date: Sat, 11 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783794513
