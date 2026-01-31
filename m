Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FBE221264
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769844834; cv=none; b=T7NqG4lng/5ag/ZJ+dfewzK16j2nni52TDenp+ZFUucgOrhQA55FIRhJ2U2fMZjFTMBdiUQY/2Qb7bynoQrLgY7Qrrjy+/fC3Q9Xdc3LPK9kCwc7PeGt1G1IzfQxF0zAAurqVtwxRiHipsJUFtTa0UGYfAjNw39BbA79jHYjs+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769844834; c=relaxed/simple;
	bh=xCvOjFVOK5ItHyJg+FlaB8joPoR85VI0qUuST6Nqb3o=;
	h=To:Subject:From:Message-Id:Date; b=fD2xRtNU/rFKFExRYRAR8DV1TUjknLroLYiJaIFJ2Oyrl4KIa/nXu3YD7MLBKoMyv6Ky/xiH+BqlWpI5rfT3mulFcU6Z+RHSrALFTS8feOOBD+6Ss3QvMEaS9bJj0r+Ehb+ZS37e5n+peKnt1fPtfa/okC8JceqLyVPwZj2UAWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBeN1jg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBeN1jg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62DAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769844833;
	bh=xCvOjFVOK5ItHyJg+FlaB8joPoR85VI0qUuST6Nqb3o=;
	h=To:Subject:From:Date:From;
	b=BBeN1jg2jRG9TKHjQ73UiVV1ebWD/hNP6qoaY6jv5+QeTWy0Lc2IyiO50U/awuwuk
	 /SCGODNvW/tDygpg/gptIe8PoRywat3vjP1YlwCm9Ge1RC4rm1k+llFLab7XAFaGma
	 Rp1WvBUHnvIkKxQ7gJC4RUG5f/8aNBXa6p0lvM9t2uTsTUI2FpQlv4pJkBbm1XxIAR
	 di8a/DyEJ8R/yTPakmBd1BC806j+/KLs0ag5CDXRDgOpg9gd35tD4D+XlZYfFbKI4e
	 m5/vLp+I5cY1jlgIW6529nbQTsofgMw9Hi2XND2dJRAC/AAqV4vIkbIm87vvrtxEyZ
	 9UJfDwd6O1axA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D7D79742
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984483358.21739.14107435739380966885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9205aaf28890d84ce991a99b5dfeda3ffd7f37c2c0f1dd20fcd659858bd3123a
Date: Sat, 31 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769844833
