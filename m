Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BE41F30A9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764090774; cv=none; b=psatt1E1FpupZLHagrzdhAS8zs0t7nejZMKhz10pMl6rmYIrvdDWOnHb1E2ECe1pxBI46lfovIH3PB1LJpVgLhjGwE2qxSZAAVdn6oGY1dvd0gBhLYJy/jgv9SkEbt10m0ZNNDyBJG6bZxSRHTrfZZtw4i6f4wzq7jfHoMVx1Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764090774; c=relaxed/simple;
	bh=l3fXndHHOmSurPeWH2lju8gv4pjNF/ebeeNZRShy9Rw=;
	h=To:Subject:From:Message-Id:Date; b=J0BfIstW620oaIt84WsHDlV23gF0706IQQkpddVD+LDT1c1jvG4adUIVqbd8pxViF88b62e7Jh+I9Q+GbSdw46I33P3vNN3eLUCFC10W6U5wkfPgbAoW99yQQ2B6w0U0gajWsO9T6xvEAcyKA2+bTqonGRN6mC2qm9ORg4v3xVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG8Spaob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG8Spaob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764090773;
	bh=l3fXndHHOmSurPeWH2lju8gv4pjNF/ebeeNZRShy9Rw=;
	h=To:Subject:From:Date:From;
	b=RG8SpaobuoZUSReZe5txlm4nnyz8jxwoflFZM/L+0m35KbTf51dmx66Ipe+6pJKlY
	 csv/0gBUVmLVuf/rSw5cCIa6167z5sVylsFaOWnzcso9oSo4XRq+3HVWJkMVq+A6VD
	 1hQBAmREID3swVOLnM9k8+CBiI6BdFyFqo/qrFCkc6/Pfs1+839NsIHWR/eO8fLI8M
	 pvsY5didpngaHfyp7yOLyEH0K2D6wHM0WCPkfGAyPYn4d1QNTqXdkFUCrl5PbSmWZP
	 uBocpVdNVi4GZlfQbgAOpfpzGQpXUBGvFX6UhYxlegu/M7qZWROBTGCD+2rFuOp0X8
	 Fy7388hjN0hPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90770D0EE00
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409077358.3085.16235337946328620722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3512baf15c380946e03f64ff4848290131847c623ac30c1eb44ecf1765259bf
Date: Tue, 25 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764090773
