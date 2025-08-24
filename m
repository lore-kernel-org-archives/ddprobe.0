Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F2D38D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756037994; cv=none; b=Gr8lOhivivxYiXCVjAfoOKFgylGi9wGAgWloprClJJk64+AQlh42noEohIhI/c5Dq7SuhlMSqtq5EubQxN4CBUFA6y1bmO0fED/g8Hpg3+Im8Iv+6OHUsDOQ3h+5+7VXBOobd2b+hqyPln/8ryzkzkxOOU2bAk3k0/WSSRhuhNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756037994; c=relaxed/simple;
	bh=pNCzgXXquEU5W6pONltnCDiGLKNYIkJ1g0F+80zR9k0=;
	h=To:Subject:From:Message-Id:Date; b=XLbZcL01o9aAaMqDC3mLRWZYc1Y8q73KrpLIA8Fz9+jCv0q0vrLc7Ck7yrrMu4asJaZuTiVS1WttHmW+DshJlWp1BIQfy8Lzaqlbs/ZM/fRJ8qbBNhkuj6tNYuSnnnsyLJvjKD6FiiI66osN0H1WVIYrNBvk0wz7GykZyjstQnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEoA2H8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEoA2H8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756037993;
	bh=pNCzgXXquEU5W6pONltnCDiGLKNYIkJ1g0F+80zR9k0=;
	h=To:Subject:From:Date:From;
	b=aEoA2H8ClRDi7rRb/uarIb6Wy0UE7nZaBBNEJjDXNI4PV5UcT2mEJYUMD+qTy6t/S
	 KBb0mpPcMwlXpP2PpP3QYKhAdsGX3G/yttvyUMeQMlzHhJPqw0CyL961SsVDcMKhxE
	 iifqyddPWt2UrnkRP52lCQ39yZfXh8HYmVruviLeC6Bx1ZmOFHYQt7RfAQV4bUxUPG
	 SG8EE2tmwq37LHX3nJ8p6Ic6sMoaYk9aneClTS2hCgzkjBFW364dNpt/3OI1YyJOEW
	 jYnCnZeR6csUiZCbDR+f6WKwxBhvdiI2ElPtaHDqie1f/4Yu/sTd/zzAhjQsFkD2+N
	 dzPVRzbK7w6bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F9CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603799357.26169.7489849866132958261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52474fc6aca2dc868706c5d449a1a2a9e99a64d96d66356d11b24fea3e513eb
Date: Sun, 24 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756037993
