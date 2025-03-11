Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F351BDCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741667934; cv=none; b=GaoJgF5lnaixXa8umQKEi797RjKr/is3Z2IIc6NMcvZ+fOS8NdYFIrbHtOuRNrB5i32caGrSVaI19x+gnsH4sqE36AAfPhetRLJ26uIKsu8qZZaewSvnc3KXICWYmp+dQdk/Lxdocjpz9iTuxGy4ivYHMt6QOnd2lKoQP1n2zgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741667934; c=relaxed/simple;
	bh=sDcPnaWeduq30IoWIwUE8J/ZiQas78Zpu7yBYEzJDxI=;
	h=To:Subject:From:Message-Id:Date; b=Rnrn5GB6JG9zKwZ3J0GE8IaUHYt6VZ4l8Dy4t8bTzde9fYqb3J8KTR9MDxuVzyxrMpa3YkxhUF3L5gu/x5xDFVHEIBabu8BjTw+0DRe/Jk24gScvPQPNQdTbwB6u0GLAbQtEyc35RoYV5Gy6Ncnv3tMgxaEmUnZYFr6mKaza//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH3sVzml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH3sVzml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE347C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741667933;
	bh=sDcPnaWeduq30IoWIwUE8J/ZiQas78Zpu7yBYEzJDxI=;
	h=To:Subject:From:Date:From;
	b=UH3sVzmlfyu15n/pBkIxHPFiNGJHtaaFhyNlEJ2KUSXD9iOduGR2i0/6sIIPHrQL0
	 XOrlnMh7QLl7thBUBd8dep6AGBAJFkqNv1+mLFONnEHVJzHolLCK4jF5QuqhK3Ufxi
	 Btl4F3+Fx+ty+k7aAAJd8XdCoqvm64/+wWEeAR5BaNr4Ya0iYP3iD/xB/oCT0HsvGy
	 g+1O19AXiIewpq+oy8QR/oC6JG6lni1KKC0To+/XGUGQq2TwiTcEDwSkINjpNenn78
	 d+hQFxWRfvhGXgvt+wg/fh064eRuMDJZHYtFMpOlyRdYM9Gta7r/AjaJ/AyiCdtxER
	 /X1TSZSRHNsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489CC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166793359.30501.11547861850659033254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db859649c5807b81cffc398319220b76221e00def95b9ac01fa5eef225d475ac
Date: Tue, 11 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741667933
