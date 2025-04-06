Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE81A5BB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743946794; cv=none; b=ryyXalUP+X1yaEYfaQRkGXhSSFDTkE1mrWnTcBjhK6M3UXmLpL9LR+R7YCR4rZPwUpXVhHoN6L9+8Sh/QoPxXH7AasuSjuk10KXgfguJBJ7aLn416m5WVHOtk5vSYotH4QfN3EhAcBN51i4f+2iTJRhNqiIxtwfPHJpTB6ckDl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743946794; c=relaxed/simple;
	bh=iGIpekKp2203ai/nHmV21fIxkIo2DY1hiPs+0u2UsIQ=;
	h=To:Subject:From:Message-Id:Date; b=iRBCFXwLVJuR+I2EQRg1XOJPXsrLJZi8MpyyIgpBswUDOyfNgFOuv3WP//Qxnovlo1Zi6Y7XBU1fqPmnfpi9h1+maH04UsPw5FwTB3b4VQdjNhxHV7noIfqEnkElFuzK4cXT58MlGrmkDScyk8obCrTCoxhkuk5nTPpkUkTegec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywofe3gD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywofe3gD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B97C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743946793;
	bh=iGIpekKp2203ai/nHmV21fIxkIo2DY1hiPs+0u2UsIQ=;
	h=To:Subject:From:Date:From;
	b=Ywofe3gD17XD7Yc/Bk/M+wXqfEEXz2Hb5drTPu2JRfKYRZkMdasGM4/G/re6Dx9LW
	 1fNR9bWKGlf3obAvM0KykrPwKZ1PciuBoKeNPGeHNO23VmWrQ1qY56URR+awTL4wCi
	 K7SCEykG7phgb3/TZ5ygqruOxmiTm8ZTAQ4qD5LGGV/fkrByuYm/rKp0kHLIylQh5Q
	 0Pq4cJLh6Rywl6hP5RosWyBWjlAYnFZgWgO6oCBzteHr/+5giqZv1jnzSky1ZNnVtr
	 UHiC8mrPaJIkkaIj6qmNi7L0NoRsLqr1RnIgi1SY7gcuW37k7i/SrPKeyGnFe8wJPQ
	 bBskcDxsimznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ECC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394679358.14195.10790951129390624871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5739e48102525572e6c4c9b777984b262fe94373894a41a01cf5955b00cdf17
Date: Sun, 06 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743946793
