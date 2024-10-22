Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D201A0BD0
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729612554; cv=none; b=OhSQf08T7PDDsskEEwd5aL2gZ7xKimB8Mkx/xbWPQaZaGhgRwGfOvgFH0co2/MwCoTdQW/DAe/kqnOF8nktwbKtreUec0ZDSVl1mt2qoj4WK7obuz24ChXwy1T4HAvIyo9XfAxm1ilYg70vm0ErNUFAl/VbdHadSIvVMhv/cgcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729612554; c=relaxed/simple;
	bh=Xj3b1lO0vQdS0oWX/lAcnp+LIdGxUdTapRM74jZnXKI=;
	h=To:Subject:From:Message-Id:Date; b=CIBXruldHEYD3hT0NkELUFk0KOc1wEY75laDjn61WcMFcWP5UZWIm621mMxn23fKeXEgZIMgyqvS2tnyVRL+N4ehlg4rhy2JjPICE1zphRESqRXQZcfj7e4dMS2fBY7omIXp0NJ/2b9B8pcOl56EXbD/kXvmZflmDhdcTQlH0eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0SLYYyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0SLYYyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B724FC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729612553;
	bh=Xj3b1lO0vQdS0oWX/lAcnp+LIdGxUdTapRM74jZnXKI=;
	h=To:Subject:From:Date:From;
	b=Y0SLYYyJ17xFUQ7UjUKW1siHKNSLrcFMWMv5VR1nsiOzYWYL5+o4vLvyF2dO5irMr
	 h+mM16FYtwDoKfr1RSn/ioCGM3D0OTnE0JuSmpmf7wOByNwryfzhDn3yEhqgC3wEX+
	 xLWQKJae6CZoU16A7iyQZIiexDX8dKH2NIiWAqM0fjqksu1ki0UnymBCeZyXMdWkiR
	 syAWZeok04T/5KsEdri26P75f/yhYXetkTbsMkA/uxb/3U60b3RT4uMV8QlCrRUKa3
	 X4AQepFRaR7G1B5Aa3aiLrStpxxbo8aPXhHj7la1DPuyL+9vn9mVXKoZvbW79Emf0s
	 JmcwqC9F5Riig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62E9D2CDF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961255365.7124.9727340309754214330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668444a57e569dd71ee5911c235084e2eee219f21fa5bdb49095646ade05fd72
Date: Tue, 22 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729612553
