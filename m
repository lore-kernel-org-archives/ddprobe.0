Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390B72F32
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744600794; cv=none; b=MG9tBBjPSTgTTlB7twupt2gfL4iBcAcJ95B/XuMP2WqlyqhNcjDmZszjeGNUaWhnWWgqRcU6q8ptvwX6gpJCKpCeeWgUZyUPq0kUNb7U33/3ZeMVxLWUXqh4yOjGd729m6Lie+MAye8OwZQ+nTHM1cHlWddQ/bNmN/ywm9EnC/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744600794; c=relaxed/simple;
	bh=fCGMIOO401b7NuiQkIwpJyE2l3r88A1yCdKdFckBVck=;
	h=To:Subject:From:Message-Id:Date; b=jFJDlVTn+Reiww+MhUhBJhmjL7zH/Lm2PY1ByAhxkDQ8ojiVjRVbnaJL5ItUBvk13eOD8k/GQzdGJ/4B4iqc+PuaAEzEbzWs65Cr5y8qCQ3vULdzGAMO7l7Vlq/dGpFm4ktQqlnQ6gOPSd8Ak389PVGm3N32o7KZ8BlmXOWfvwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlBQInuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlBQInuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6AC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744600793;
	bh=fCGMIOO401b7NuiQkIwpJyE2l3r88A1yCdKdFckBVck=;
	h=To:Subject:From:Date:From;
	b=KlBQInuC8R6TVO+js2EDl1reNVUJ4dAHu9ZHWX8JaL7bJK4jXk7lTDeefoJeqaAMe
	 JVvmOwZ2poX71U5aqyoaKUnKzvVPIs0e863T2dFPM1KGsTrXDwllWPS2nbNzk7YS1z
	 uTK+n/l0VwUrHCKrjH+UxzCrPsoWiMm6vcY7tGVgZXEddEquEJK49M5fEi3Pk99NGy
	 ziaYJj2X1xCOAS5/OeEZLdzg2oDIOQMjwwtDtHFJfCSTTIUlutdtUm8qg2Jl7RyM16
	 bIkY/oZfzlGiqRwneWytAZbE8MtclKKRjbiBGgo1kdnTow0xAB1f3MMZGbnPDN5Yf/
	 7iW2ixb0VFmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BFC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460079358.10586.17309614460494823038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0833741e59d2fbed638c77268aadab42e675f29a7cd6551a56618e2cc2f372
Date: Mon, 14 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744600793
