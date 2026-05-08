Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CED834F275
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778230654; cv=none; b=R0KhkO1eTe2C+CWDzEZdiF8yu2hMSy/BJ8BBCo5pmtGpTz7f222KtN+4lke7fuQQr855SgDwfoyBz4vcoYq3I4HD2nFdDYJprk+U24DkjaHVsG6TdkSAt9T3a1so9Erwv7qmhsv1FbrC5CVf8uh5zWjhsuVj2bre5mgyRhT58aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778230654; c=relaxed/simple;
	bh=/PlxmY2cO3oZ4VvKoiFgyaLqX78vMVp8/mzRoyRJRkc=;
	h=To:Subject:From:Message-Id:Date; b=M+WgEwjSrj1z2bbfto1Kp6+NW2RA9bXEnXsfk8n8nCiW7/fgUkMEpZ47SLIBngFazipUAaA25iz7Vo5W+oT4HRS/i/Mk/Ol9QWddJI3GUgWRikVb8OWmJLWpsGF1ib818tE6Qw5YZH437Hib7mAp/LNBP0FLRiuSIutiPkGECjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B26C9KLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B26C9KLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C98C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778230653;
	bh=/PlxmY2cO3oZ4VvKoiFgyaLqX78vMVp8/mzRoyRJRkc=;
	h=To:Subject:From:Date:From;
	b=B26C9KLFmHI4kiGpDaQy2yjTnaRW2mwBJaIm4U3cVabVbmjx0OkvYs+K5VfK9ZSiJ
	 s1TB6hbr17pguPSKKNLN2ZgKWJv222nsYoUCCD0mIlD2Ry8k7mUj+2Ozv6k/iulnMk
	 iaJlfKsbLSkB0RGGTgdOMSVJVWSWx09XzEIPbkipfynp+ybZyaY5+d2FhpqtsiB1cl
	 oTgegPnBBEyJ8stEcKP6ZHuqUtA4gCtY0X2LhHW5nNasEqEd2EfqavpVDg9tBtXS9J
	 gvtFQbbQAlgwz0stToF3xSdjy/gw4j58TdYNUWxAJhIF4FB1EOSjpRxMAXmLqKRt9h
	 qFwQeU5AuQbkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F79CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823065368.31292.3395362682737006160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e526f793a8c276a52620803d4c638b0b4101ec9cf692e12226146c5568750a0
Date: Fri, 08 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778230653
