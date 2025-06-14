Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6971DDC08
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749916794; cv=none; b=Unlialyllg4hgWTdRTLAMqzo6kUPoUQuNkdzYP03pn0UUIVJe1dGOrmOHPVaMWoaVSV9e3m+dzjrAeXO+b6UXThTjY+AaEZLzAM1dUOjettQWllvFeJOPlRBktxP4F8Qug9KxdNi6R4m4/qcw5Y1feeOee4GhlAlcCiIrN67B4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749916794; c=relaxed/simple;
	bh=G9z3UttR6W6pHsm38Lf0DrImWPgZ5oKYMu2VzrExRK0=;
	h=To:Subject:From:Message-Id:Date; b=p1w0546deciZ9QuKt86gstnoqSEgf8gcCcSlhReBfOuBJ+/Cgp2wW0rGi+GJevI4o/3UxCComd+5nBdo8cRMAUK45nSxx6F73TxbIyq92aMspJ5MEn4dI7Gqw3Bk6ClAQMZnpN5H7RYLfatzk3+BOSzv41fqTegqJQO+gN5GCy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enCCMyk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enCCMyk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ADC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749916793;
	bh=G9z3UttR6W6pHsm38Lf0DrImWPgZ5oKYMu2VzrExRK0=;
	h=To:Subject:From:Date:From;
	b=enCCMyk/cAjALpxvSuHq2iOxPWFblFGOxzAjn0axd+h5RWS9Cf0yTpTSvQwuSHf+k
	 ur0zst/QSIKLmawbRUft30+5pFVgIgLOLE2G8O+r1n/7lPdwPuBGULmOJ1F1UWp1Hx
	 lm7H8aOaMkJeRqOBZeUhBXGV7jhVvQjtlvJ/Tp0mvKqy3wk6Y65xFyT4CIoHWS7y3P
	 jhScWAjb6waqUwkCM7NbfgscNunRIWucHHJwOyghAkBRv3IbqL4UwzsdYvQ9y3bY6r
	 IZ6wKDSUlbGvlT1QN243kpX1+X7q8TxbIFaA8Imd+O3YBQK2xl9giyM8o2AnOjvsC4
	 KG0auq/DeVfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89CC71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991679357.12406.10811749594305246848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12897765d8396cb4871278f02855202b1fa8b85c62ab73e218900f9d9ab18b0e
Date: Sat, 14 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749916793
