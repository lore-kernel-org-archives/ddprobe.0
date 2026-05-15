Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C63346A8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778826634; cv=none; b=KdrDKDHYeYv2ZM3Zh0PeJKmL4surX0BK/luK5koZu/boJh8T7gDKERaw8lRej6QcXvkPTaMQhR2FAvwFErndMgTe1wOy6A+8kyrAlopTEYiCmkOb+O/eIewSRobxQBhXsdSuWuUpbPWiInS88WNl7kaKrBt8UFkGGZYwoj3LsMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778826634; c=relaxed/simple;
	bh=1Hl+SC8WVsAkuR9tC7X9XtZ2RvU27aqNPyStp3awgYg=;
	h=To:Subject:From:Message-Id:Date; b=hpxNFAYOAMRAqtAH41pHwZ2/Mj7HkVjKADsa/7kz5F2ISxMa28qt+PbID8iMgum13jn+1th4gjjQfJFHNT/vGyaTMLjm7FovPYdV0m2tf+W+QuVlIkS3gVE53mXO754fyJ6JE03jZ8TdSweOXOPHEqkhJyhIC++v/xDrUDSItgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQPUjZHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQPUjZHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6EFC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778826633;
	bh=1Hl+SC8WVsAkuR9tC7X9XtZ2RvU27aqNPyStp3awgYg=;
	h=To:Subject:From:Date:From;
	b=pQPUjZHgn7Chvt6cbNQyGtxZm+hPwrRJq6yCsx25uUcpVCwfF4JX5hNJkASYg0x5A
	 zTqm62K4w3HBTsZJCmlv3lfvT1yd/9AX2tWi7XJ3LceBqMV/zsO8B+awnTCKl7eVs2
	 G2tKm8O349UXT6e47a9//F6r4kwgNUg6Vtaz9rlGezrJmwyYN7YM6U+mPtt68VNz5u
	 GPhTW/CrwL1wLS1j9+ikJ9ubZuZvbGgwiYt3nJvdQIXLVOKClAl6M8FUAd+pK56ys1
	 elgZirBzdUXBS6rSNtfrnWT3Ic8oV//GLkxqAEW6CmeOqtrvDaQOCq+ybUDtdeBJtV
	 eIG0FtsRuVVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA338CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882663368.16644.3704733995729151346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b12c90e438c907fd5586cbab10c808087bbc4dd7f2f6e0595405cbe580358fe
Date: Fri, 15 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778826633
