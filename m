Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09827A732
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708174696; cv=none; b=E932ELkBrOEuxD0wDXvg9xHZ4k7joXBzAGhv+hYik5DUrzzrATwZtca74fyEMq22HTpELZ4IzmdVpngXvR/TqpzYPZHokE1tppHJR5sz6rrSxk/QKQM9G+H7rmgDpPPrwuj8f4Vu/nX+rYfIsYwX/Qr5L4Ky7YhyEUMIQfCl3x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708174696; c=relaxed/simple;
	bh=z1LJJj2f4+b7BT3H7cd1KmczqZRaJjpsHSQ61oJsqBI=;
	h=To:Subject:From:Message-Id:Date; b=B/P0dhaQ0ccm37OTHo6K1QdZs6dP83G9GJ4YQktgvRBe2zsuZZRQZcG/gbn1RLna5IHvHt3Pdwo7IN2DicCoLgsT+6xSuPSNW36DIe4QqKLYWRVT4X5PnV2/AWMLI/48LPUzxuinZiqTk9NWKgIVV87Y3X91/f/ZJzImpfE4nS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntKci4Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntKci4Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C43C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708174696;
	bh=z1LJJj2f4+b7BT3H7cd1KmczqZRaJjpsHSQ61oJsqBI=;
	h=To:Subject:From:Date:From;
	b=ntKci4FlVmdwMVBMTAVhlwwPZ/+Uo6q5urghiLEquaYocfp0H589/OT2uFq4qGw0v
	 wL5L0xbH/ZUqfjzrx9yqNpDRDq5jqeuL9G0hJ3S0iSaVct51xrUZNijxlvmghDLhJF
	 qDuqOlYGP0uzrDqb7Ygh0/d5XTRRXFK0WKxlM52mb6Awx2glCAU3ckLZGnjRQxGMCA
	 dpVHg1BBRKDF+pbON9NYn32ng+8SMh6dpHSDgBIGoDJXshBRqXVzM7zlsx7t5kGdF3
	 ro4B+KGmTGin8QvK+JtJkscjOmf+71jk9tqIL6eNiTHv4fGgVlAeeKRmMMdAp7wDcD
	 Y4+yuLYSxDEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBE9C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170817469638.9705.8712709835929564384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798dea5ebcf2640df0bd3cdf753790e9c8b901b0edd2feaa06c255ae3a8a4b76
Date: Sat, 17 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708174696
