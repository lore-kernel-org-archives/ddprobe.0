Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135BC20B29
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707583097; cv=none; b=VuKl2JZ2vh9ofyC1+FPXHeUf9hjg04hq9R78q1xvU5l1cFdQi/ek1Uy8EvsuQLm2v6MHBE2pYWTIw74wdr5fVSQCI7z92SQ0XaWl5KvhfTGKCz9m1JKV31jk56OeLFCFzmgicbP2nMWtYwpDoxpKxCpHAZtlJKFNOngrixsES48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707583097; c=relaxed/simple;
	bh=6x7KGmgm5OWo0cpBvqqBJJPuJtl+qnDYHV+21cIncds=;
	h=To:Subject:From:Message-Id:Date; b=tMCMA2JjGryJyCoLm5uaX0dCWqkDcbPRZWrs6mmdjdINF/2caamnvMEESNF6KeKSOIDxHt6h6Lz1VvrzKtTuG9Jys4WVAQ7mnr+1hdhkjqJgd7qe8W+gPl4isk2k1uLdgKKpLv4k1W7VwGXv5ZVLWC96FI3eTjlvGN6tGHYa1vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUdLivLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUdLivLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C019C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707583096;
	bh=6x7KGmgm5OWo0cpBvqqBJJPuJtl+qnDYHV+21cIncds=;
	h=To:Subject:From:Date:From;
	b=kUdLivLFdREoze4udu4ICRlfgrm5ZJTdZ+g3eJ3qp462ZUW7i62WpfBcQli6gGmzO
	 5uTiwIwthSPzdcCw5eNwE0GNH5tTOFjxdTirqURRdiLP2LMKr7ZoWCowZy9R762L1d
	 yRtsQN3ogwPrWKDPZ8U7hHGbqmLdQ05kHjs4EKbEJq3Jjle/icxCQVIqRn/P1GoKEz
	 hnTGCw6G8g//rEJt21H3Y0exRgWspYVJw4BXDU6coPV4pfyEnP9pGC96mtKC/TpgwC
	 PvBnkoelIlV1rQ2lxm+jHRhl8wVB+q8zjDyVw3CGz6OFSogIGDYsdaniXcPVZaWgUe
	 2jftbIVCDFy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEA7C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758309638.19872.7278119748592672247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc47ce36a72fe36b3c9d6930300ca203dfb86d9e55b5d3e5ec2ce968d44ad07
Date: Sat, 10 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707583096
