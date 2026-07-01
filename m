Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BCD34B19F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916714; cv=none; b=khSRD/ybcSl+/PAz/qg/WBW1K1iLXQA3q3iRjUdEcYAs4dYHQBw5Pg98YRkou/81uw5RKTcyFCrMYkgSOiA0q/FTGbr2sKG7RpvGKcq/uZqQAN8XfyaW3CbeAh6hatFucNcJCW/xFuroep7nroqHktLL2ChMx7x4gp88WP7onvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916714; c=relaxed/simple;
	bh=ukggZ7dL9kIDlWVNda98/sOrnSJXvkq/SsLWEUhWOMY=;
	h=To:Subject:From:Message-Id:Date; b=B1f0AlUSX7XX0Jz3bVcCkqAH3MeLaqSpLNHJ5B20F+oI0Sh7TbJ2fms9wX1/KhSusMKu9+GHtt2qmpN8Gf4wvVpNJGIMsDRphb4hw4Rfq00ful7om7k1H2kGF1jqlm/OPZ5Bk3OSZQ4wWCdOslpKniZrJoRfP80UipnZ6DDbSXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jruh5aX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jruh5aX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A67C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782916713;
	bh=ukggZ7dL9kIDlWVNda98/sOrnSJXvkq/SsLWEUhWOMY=;
	h=To:Subject:From:Date:From;
	b=jruh5aX1po0IYDsGPGwZEgShTiyiCdOnbJtFYPyLfOPBpP45Runhz16JFDsvUJQnv
	 1P3wlItaIN/XYO9kHhM0BZ6x8DnFBrD4JYFY2OUI9f77tnC4o7FX4hQxLk7FVYjI0b
	 0E0V304JetNv9AxOWeAIwkiF0kA5iIV/jBL+TKjQA0Kr+BectqwPAlfRv+r7QoQzIP
	 cQ2QrTVUjMS0HJBzxaoQuwD0HrHX7Nv8LbWP7E+UDisGmPaohSV12waiYh/lS0N4Xd
	 wZHsGaUCVO83e5oaipu1rhx6onaBD3GgLtAHTcvnW7/LvLi+ZJP1dtMOGXh2Gd607p
	 4b3HRu6Ouo2rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291671368.16722.779109869488415325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4700737996dcf0d134bafc43d901636938048d76d6d7e51d059f4aaf6960084
Date: Wed, 01 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782916713
