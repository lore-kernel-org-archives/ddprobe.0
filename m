Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BD0325727
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778221055; cv=none; b=SBlyZ6N+PLluQVZyiI4TDzWTBToE8H2sxUq6NpBnr3ZAr8DnhpWK0vD9usYx04MpxZmX4c8u5n3od53bYcS9C5WtHokhPU8b+7EczCyEJXEgwb+sVHfQAYDcCrvft+rhq/nm2NCpW1Rkti9ZIJKKnCIrp20zXrPAW1bVqyNW1Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778221055; c=relaxed/simple;
	bh=rNMAVPFxl8dHeu8lyp1TwYe3TwvlNq+mN0jSEqigh3Q=;
	h=To:Subject:From:Message-Id:Date; b=ZqOlnsY79XxhL0Jl0Q9iVzoeQhaGbph8QByxOSGLlIUlRVhQYGB8KJ2rDziuAFDn9L9qozVYcA8g+IxXIwfzfKXHtTaCWSLG9l4MVr/llwFECsAtrhEC39XhoWwEw0EwtPPGPY1r2O5wP57Txn5fI9+w5/lkISWJpOqO4dgFsNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvX/oREd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvX/oREd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE72C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778221053;
	bh=rNMAVPFxl8dHeu8lyp1TwYe3TwvlNq+mN0jSEqigh3Q=;
	h=To:Subject:From:Date:From;
	b=PvX/oREdNrSC3nzobmfFoyf1GKaFU5xk2fWR5z1KVzDNxZhBT3Q1ysk/veTBsWIEK
	 navsOetWLn4vvQzZwgAGG8DIE8DHkLyQfs8MFZ2JW4N6rWakHIeNu7ebXsUVmJFkOf
	 pjwCp03wMtcBGrBD3/NitlIezQ+88FnRS9yCasEvE+eB43gVjyZVO2itsddNsVGMVY
	 38pFqBfgxiKGBXpZ1rlJonWZ2wJdXAzu7V9IBsur9sDqSm5dfGSpPX4EjGSrD+Zrgl
	 b/L1sZgkpFi4zW7jtx4/v75wn6/ulqCHGS18pjP9VIOlwjmIxDGXMbv2RFPO1dZuqD
	 zACz2oY8WDnPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3EACD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822105369.28393.18307332803223213199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f300026963c02dbc74dd28fa62d9b754ab2bc0bc5fda71021c0f92a140ea2915
Date: Fri, 08 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778221053
