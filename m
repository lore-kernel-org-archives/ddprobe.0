Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7895CBD
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712810897; cv=none; b=bl592VXQS8+8MLebIHPCJ5ZxezQ/mr5p+RoORJg96liq1+E/SBMXx4gwlJoJu3FdonLA0QqRoYpAnKNyZOlAgUj9WZ/g4bwQu8ys5aGrUHOTLCNFM6GC9RswiefHbJ/4vdo6pNaj3N6D4uAH53Th97HyTj7QaLgqn5PbFW5pt5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712810897; c=relaxed/simple;
	bh=ycGUAtzC1zWd+Uv4Xy5LQZG0oRKapou8OGxjnoKn8mM=;
	h=To:Subject:From:Message-Id:Date; b=H0Y4RqjOCrXg7cB/1B2a7I1PF3JZ0M4ABQ8h9ia7lHDwXKeU8JMz7TMOMXzEkfM2HDBs5iObQmO752StdcCGQF3H99ewBMePq2QVu61/3BCyXt4jZiziDwR4ad4uU+gfkst1q3uqZNNj11AAEGWzOs2aQiDGH4Wqv2aWR56OlSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohGooZbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohGooZbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7274BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712810896;
	bh=ycGUAtzC1zWd+Uv4Xy5LQZG0oRKapou8OGxjnoKn8mM=;
	h=To:Subject:From:Date:From;
	b=ohGooZbky9rik8V29fkOgOPmSgfCSDLiQ0K7rgI5zKk+CeQzYbD7rncjP7E6PtQFE
	 vNF5TrE/YAW4AKNsVThN394FrcqcTlpMJlGVgYkWE/K2eTi5f9ywaCk3UnBQQE5NPq
	 VtwjSQbtzPDxuU+iyEGkWnnCp25caDdxOUYuJTSVZJjPAqEfYOJKwSIXy3hvTIsv2b
	 ylXB37mXZ8WWgOWUUKiF8MQWh1oaoFLhE69eyacF2Fzl3yMrp8twQXka3apbmTp2DI
	 y8jFj1GDCE9eS0tnFbk0JN4yS2BKiaQvBAR5bBNOTuvS5FezBrZTM+iZekZbGvEeUn
	 XERhKMfwlVlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4FCCD1297
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281089637.27647.12810567794883743980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049b11d10199545a6123977821b6f57490b05bea6e38a649a79fbecf42acf187
Date: Thu, 11 Apr 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712810896
