Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435E217993
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787296834; cv=none; b=j0tZKfdLNNH8aqF4dYoyreOKLSM1UdmlmpzVUJY8+Z7fiVeHkK+VlDJHTcb84poHn3/kr/DjB4NNmKvHc1TZTV4+Imt3o/Y2Gsd+wd7zOMn3ObavJUfkFTqboOcTyQjKKJA2w0+6bRNYWu+4rkW7+GbHSbq0NuquoSz/zSotAdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787296834; c=relaxed/simple;
	bh=TOi4hdXlHvNNBIyb5u63OPalOUyqWL+9CP5CxoFHJXE=;
	h=To:Subject:From:Message-Id:Date; b=saKTooyZyj5MD7lvewg6z/rYMdE4+Bi2X5hxoExKNnlfw8FHZEm2Q0IQmiVBGqy1d5hi3w2rbMTkEwLIvcMcyODMAa1V9QMEOOwD8h+6L4N4lBlnpKBlAnpWG9IqRVBV3v+Og66wVT7NCTiEZtGjZJ1ls8bLhvOSrZaXyr51RAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+v9mh8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+v9mh8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB8BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787296833;
	bh=TOi4hdXlHvNNBIyb5u63OPalOUyqWL+9CP5CxoFHJXE=;
	h=To:Subject:From:Date:From;
	b=F+v9mh8fW1X2Ze247VT91UFQ5Tl4ytgDypNAlK7IIfll6QK/lQAJ2rSDgE7FpDY+y
	 aNOqgOrO9OqzYhfBcaVH78KqWBYJfGyAaaa8qo4g3Jp1RyqpMn/qdtIBf7nQPUdTP8
	 iVe268ZeDg88n+QHyrZO4RW1zVRC9beTmlPu77WH5BdYNNMqQo7GtHhk6LKJYaefv8
	 SKaOdG94snuvFkhwY/A+es8XB5UgWGwcF40O8sdE7AjKxMLTxqwAeoE/beZuGsWncz
	 DqQwq6wsO+Rsgd7R1Dt6tE8BMhvXurvolaU5xwcHS02+BrZJv41d0qxq3TlPiZpW2O
	 QN/YTz1eXkdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB572C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729683369.3811.710771927533201494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4002defe879eaab388c37f20f5295dbc7e89c337623d17cb6057cbb34712ad
Date: Fri, 21 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787296833
