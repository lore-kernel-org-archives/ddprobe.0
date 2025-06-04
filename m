Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98D192598
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749077996; cv=none; b=ELj2ZphTqX2IJO2Ohw8TIB5t++vhEZ5yXUEAwAp7PuUFjLx7VUGY/lcQFUPrjU5NqL86Y8LX5KHKJ3IP14FKtv9JAXdp8bcuLxdeLE4IwjYCfFt2mebCKKEOn9tiQGMBTVgtWXMAQVqhBshACEJzBWj2LUpEJsU+jh1fEOuUQI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749077996; c=relaxed/simple;
	bh=P4v+UAyghgDvl2vLx5tiGK7hjU40X+Kb/uXdoAvAyy0=;
	h=To:Subject:From:Message-Id:Date; b=L4pPfuWYbUFRPr3r8LWw+Fn3JnmfxJ2Yci/ujciCWCsswKa1UxRHrmspqyXJMb1Sv/OXYxxlXGIl7JmA7tQf71WRLL/OK5vjrCwMg2BjAtRWk6vwoWSc330yUcTh9TcfShkitV4R9h+4MAB1WiTLP4SFC9SGq6qv4lglUkz3un4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4v7wZlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4v7wZlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B7C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749077993;
	bh=P4v+UAyghgDvl2vLx5tiGK7hjU40X+Kb/uXdoAvAyy0=;
	h=To:Subject:From:Date:From;
	b=D4v7wZlEJLdWRLQobGv2jW02XQbnCq63h3wPRa6fs7sjTUJKqDHJxzyMfkJg2SEuu
	 FyB1SHGe1s2mFnpF51+OOa3732aZN9gMxiMVEAfgcIYjeMOrm4hI6faa4r/DJOWjmt
	 mgqBGlQPXB4UM+5NrjvzWuAga7R980j7MJvFgQ4rvF/6n+9ur+Lv/nMXpweppaE8sX
	 h/6T/wBGpj94heW6hdEEHCiF8g/UFUyMTCfEzAXvcPgx0sXFSCt63wMOEQaeK4D3bm
	 /mCF7WzCwsTFIc2UYFhEDs6nUsi3S1eoFGb0y2w1c4jSeo3N7XkBbpNY2yjZ6FEs05
	 d4uN+p5g2/LBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F861C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907799357.23321.975690618961095155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20714eee8681e6d04ddc69995da9a4db7539af1636212337f94a0bc006312c4e
Date: Wed, 04 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749077993
