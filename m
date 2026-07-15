Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5435A373BF1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784093914; cv=none; b=baJihJxXuni8PsoTg8jOLgJqWdfkwV61LztPh/ivpgjPYH6Bn6Shb2rHE+eWDoRSPQe72xM2pK+ozs0WEy23Sevn4ETXprdcCedVkSmwHTJJN9RvKVbDYpwhLY6coBNrAQt7Xje4zmHIWZ1+zE/QblstLZBtBQ5Zd4QlQFzLX4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784093914; c=relaxed/simple;
	bh=9RPZs43J2gNdUQlGULzF5VLK7cUhAURTXGFXRxHrI5Q=;
	h=To:Subject:From:Message-Id:Date; b=N07IfKMVDxUsuevqoEcU87Y3FXa57alNBVgQoxPTr9iRoV4y9sMVboPC4twkDuYF8BZZck6Pn22R7KveNvkE+tpDLlCBKMbhBqyyl4nPvDLz0y3Va4tU2EvxPR5jFQlr2viKJx41xWL9jItUES/ngpqViqF5RMlcpE07bH4bNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJZ951ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJZ951ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DBAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784093913;
	bh=9RPZs43J2gNdUQlGULzF5VLK7cUhAURTXGFXRxHrI5Q=;
	h=To:Subject:From:Date:From;
	b=XJZ951ymTD2utaOZh9VodumhIBt4w76YYUSe9jVLkpnJ0NW9iNFb8E8tNcXtgACJ/
	 HDck+OlXDf9/0xXLE20rBDnCZbQXvpVucBd2CRX/LCvMcBv3Lvt1H94Z9rWi4tfTkS
	 pgTXU9cEhFFV3nQiT6cWuBZ6Px7qzTSJnEv5Qqzfef2J3z2rODtuxTrq/96hYJJBGY
	 mKnz6gfbb6aXttNyiICKjbboP9gvWQ1ZDNQVWTwFT8uXoz8PC1wLPk5RG2AnbT10Ds
	 1U71XUYeVbMa0b6PqgyeeN5Ib9/1ZrORO8A6ZFM0p4oamvmaRhuDQsQz3s/PDeTWn5
	 0cJEwusbTlOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B648EC4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409391371.2301.13577080503322190106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56213476cae61a7da63ff32190f1411ba9f39a9c5343c9fe40985d605017c540
Date: Wed, 15 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784093913
