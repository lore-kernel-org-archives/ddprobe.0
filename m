Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB355A79B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745638794; cv=none; b=U0o4o0QkoBmmFeKySlSlTzaoeKpA0pGzDlQLv4dAasK/TnUh55Tyb8kQF114i1tjUdQ9kx0F/plBie6x2VIClNE+r38u4ZsR9sFQKMEqusmFeyqcazI+S/aOXXwQVV6Z/7U6TZzIG+OIa6xQk1ktmgSspNEuAXMRRUduIANAnYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745638794; c=relaxed/simple;
	bh=i5WM/mOcJ9isUm4yDuLPP0ZvvcLj38UhY42DlFRT7dY=;
	h=To:Subject:From:Message-Id:Date; b=nFFhbzbAhAkVplhWV/bC1SLqrKp8bptTVPVFAWdpLa4TAPOgUk4ECPxq59xGjtSPFmM9+Ne8BQo7bSPjXL4WKQcWadSaHvnloTUBV4D6t/z3VbAN4WEvY+zkBODQsItmqybgk8NnQrVIGRFBs9qMf7LWLQEXRyp/dZvZM/Uwbto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuYtltNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuYtltNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745638793;
	bh=i5WM/mOcJ9isUm4yDuLPP0ZvvcLj38UhY42DlFRT7dY=;
	h=To:Subject:From:Date:From;
	b=TuYtltNdotWSxklrI0o4H++bFKSRXaqMWXFjblMKgVD1oQvqQ/8OsyP+ljQggvCkQ
	 jipUF4UcUkAbFeOsaxURBUXQi7viUvTroJuTHl8q/rmQo4jRh/AMJKruIvdELCpw0B
	 lHiNKbZJ1FSUBwvqdoOKGMpWMdSUsWkUYrXMA7YyfMDkeavBXUdXhtGNpyfkqi/S5u
	 7icEvYPsw3B4YBieA2CB2WAtJuUaRLRs0B8uf+3L5G2ITstFjziXO+XcqqaxeXikuW
	 mrNQo7na40nC9RX6WQ9hvM1sAuSHAGjgY7ifCpo7tR5q28Z/pP8Iyb8DfcLFNhuBoB
	 klouF8WSVbSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B5AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563879358.20909.15935290812235635348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfaa5c8309ecd2fdf5937bf18c997ae81db462a743711571c2366c8202cb5d1
Date: Sat, 26 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745638793
