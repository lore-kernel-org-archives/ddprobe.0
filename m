Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F2B2FC00D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784276914; cv=none; b=K41kflLD9YE7bQp3t4JZDZxrpWYPuMOBJrRpOpJeT9aUj3uHD7R57OcH3QgpXDD8ylOZCRD3Z9xY++LV0N9LEriLc0wFyGLaxnmFvRyP8Py7bK1ZzrdarUCqi+1a5ShQZCzC+YPNLeb8EcX3sIdPW9Sjw2BTiUkfzShiAaJtrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784276914; c=relaxed/simple;
	bh=3bkSHg9xb/CTx2UiWX5V+mTqGtVJRDrSne/zrlZQAo0=;
	h=To:Subject:From:Message-Id:Date; b=LLtpkXDqVX8x+Nvc7/0l8w0aDuDEfKknGiiYqmWp0erGHXuHO+I4KqH7zjNrSUTyjDEx9ePgOLpnZOJWVzrUhGsqayM2Ezjp2lTMHzGlocherngbBisAnHrocxXsM40A6u5WTJ1QU8UwKqQivJUuxVBBZpIOQYIFUCTZBChmJsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4Yu5YLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4Yu5YLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC00C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784276913;
	bh=3bkSHg9xb/CTx2UiWX5V+mTqGtVJRDrSne/zrlZQAo0=;
	h=To:Subject:From:Date:From;
	b=A4Yu5YLITwj13PjlHMKEyoHl/QSo7bwkMFAUAT5wzDekXCm5e3Ioje7q1lodI/KKj
	 mMwJxHcQYThOugAzPNRo49xxxmSFIEHaUcAV9veJmFxBWho23edq8aMiRpE4YrTTDV
	 bsgXb4sIusxxa0nYeKaMPRZUTrcS5A4Et60QdOafo20SKKSnhMmAzd1mZBsxCBXaIO
	 WgzDRfBl2RYixKRu95EYXUGF5ZlsEUqRsN68HLINuwag7zs1T+GTiVNBnJC6TcslLq
	 kVsYMIE0eYWthOQK3tbDy4y+2LvuUHHqsjcrwNluTntfB/V/oNyAMGU/SzXoHT4YwT
	 8w4hSiOzPUTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A926CC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427691368.21164.132802079358579970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6dbad45edb33f7138326f862463731f0cb7c44dd172a704ac472439717c53d
Date: Fri, 17 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784276913
