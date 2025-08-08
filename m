Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EB1214801
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754634594; cv=none; b=dsACnF7v7/Xxh5ApxqqWErjcab0UKoKsuuDhZXNZR4aKAv6RbpKK3/IwVNb0iX/mvD9DowomrAGaOtl5Tulbul+4wp9Z6h5CVG8ijIg4hrjYznJN60bzAJ0/J/Dc0QjfH/butWl2X0mCaZL3gUvS9mYk4ve5LyKYHnyJu/UCcrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754634594; c=relaxed/simple;
	bh=7PgJHgaZ6ouWwWFZf4gOZIaiGGk/kZQGQ5+xO8jBNX8=;
	h=To:Subject:From:Message-Id:Date; b=S6etOZAcBKXQPoLuQiEWF9OeDpjvQzh5KGqRZ3ajYYGZaBPe1T/yDf+zhP1QSfQ9RbK6ykwybyLATSZ+2GEcMnmeKmgrVe8ht4ho2iO2+GpeOc26H7/OoouAFq8M1+f+FeRfZTt2jFHg19dgO+zNpyM0Sn19PgHbFlx1U7Hk+3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3uhZ2xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3uhZ2xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754634593;
	bh=7PgJHgaZ6ouWwWFZf4gOZIaiGGk/kZQGQ5+xO8jBNX8=;
	h=To:Subject:From:Date:From;
	b=E3uhZ2xf+wr2L1cRt0FvRuCb8ar+LmIoc/czNnJUTyZMM6WJGW/dlVvxkbJDCYHKj
	 rPRtK+/cKGvnTpQ87WUmfx+YbamKPkAySdfYzU9191VBxFTUryLO0hv+c6sLyx5TNk
	 gKNGps+9iIc5619JygEOT/enxMavrMo75GvLoTWU3HrdvvuoR8MVtQvqg0l0Wpgyk2
	 7+BPd4Q8qir2Otnm+vQBcKkD3JTCazadeSjtYsZStJusDTP75RgXXXVihQw/n8SYKi
	 n9GlA5f6Ju3TfLM/x6LhST+MkePlgrqResIPMTz+poJYzodlAab1XQwAkOUaac4oRS
	 0gKH5mZVoTpSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EDC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463459358.9139.12212090019400651373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abeaf850ab1c28b410d8cdde8e367d1590de96cafe27ed18941ebb948f0b4f5d
Date: Fri, 08 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754634593
