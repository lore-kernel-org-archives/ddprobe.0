Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589BD1EB1AA
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786896034; cv=none; b=K337VYvRd9FvUGKEF/o5o8SQJ+VA+qjY4BHoAwX4KAWF5s4crtI6+OHdM8n9olKah+9eCHC8YjPG7aecyNVa1Rl5RSWOjGEU9ICRdYi3vKV89gKpfPvdllzs1u3ygjwRGU/vZNlMA0Yly+9wELKHzhzWOEM7nVUk40vK9a23jb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786896034; c=relaxed/simple;
	bh=Wc0wolVxGhJ54SUWqoHscnwnppChgCHAvUpfY2kW/JY=;
	h=To:Subject:From:Message-Id:Date; b=K4qwk/3r08po5juMzs2xiHbhHVSA91U+gGFcHG8e5cgk3QNCCt7oZEto4DM/CrrdwowFfe1H2mfd1fI+KYiVbGHU4X9nC/Zosb9M4lzhE4c6sT0aLsn6spf7cX3fd49OeJjZZF/tg7WNHdxwTTe6hGWj7y2Edsy7ilgk/lbIqf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBRu/sUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBRu/sUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97EAC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786896033;
	bh=Wc0wolVxGhJ54SUWqoHscnwnppChgCHAvUpfY2kW/JY=;
	h=To:Subject:From:Date:From;
	b=CBRu/sUXWc2A2jht85A6cME3rEARvdTawCNSqtDuyxNfJSjEKW21UxjFBgRoHj8m6
	 ssJRG4AmfUpY8oaDaFkdx1ncD1EcuHYQ3TicoB4HAP9vN0KVPe533oUSx9ltlxZSWR
	 l9d51xo+Elxed7ZlcIoCJWilCZUQgapXHLGhjALbKsieioENrman1R1uDP2KNvMo9j
	 zQbz6LzJqmG1NMiuw7SnN7VVLGjLp5K5P9yDkv9nQSEYrsaV/3i9T53e8RlUfUQnmg
	 kDGeyC5uChc+gnuhARd/vkL5nDHyM1VWYNyghu0G/eaz/L4LZ4uD3q/IOgPQ6Nlh1E
	 m3eFfhCvrZv/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD38C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689603368.5958.10015901412028248647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec352a3f0ef8ae9796bf637e50bcb6954419d58dab384dc792d59c9824d7856
Date: Sun, 16 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786896033
