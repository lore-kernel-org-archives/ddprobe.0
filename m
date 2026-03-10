Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB67034B18F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773169493; cv=none; b=O8N7ZBON+pGn8TaBVHTT8eZTunWKRsV4x8dx66BwBQKv7Azi5jYZhMpz5W3Hzi5x3nZL1P1qF4RQBzJ5VqFtJQtbFGdSbhSDedChscg7sIC4BHv4gf8vFyc77ansUtFirbgZmirLGqaMKacG+YXXRto7V4x9xGIeTPyilk6Ex20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773169493; c=relaxed/simple;
	bh=WFalMyarhh6Yub3mrhhxo3PbDyq5Tv18BjlZR1WAd6s=;
	h=To:Subject:From:Message-Id:Date; b=TPCwcikPXSOu5pXQl5VeNHS5GyQYDCmTryoZ0k4531zuXV8FOUpqOoXQiDQhbRZeLnfWwm7j/g6lVfhKxEvSeYrcDGeuk2J8lbOeryYlnbNi0tGcsSjHgHzAQ6GPfqZr9IrBbnj4zZTtfSq1pqHEMcZK9om5t//r8jGN7bH0Mcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhRBPdFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhRBPdFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE73C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773169493;
	bh=WFalMyarhh6Yub3mrhhxo3PbDyq5Tv18BjlZR1WAd6s=;
	h=To:Subject:From:Date:From;
	b=qhRBPdFgaDntYtERTZ0bfsh6vACaKdxQQ4ZedLghde3iaJ61I7ZDp88p6p5nJuGpm
	 GNd0BRwAGFDZIuH8mbGFkmn276DzhNsCkTl+A5ek6rPKjHGcEiinNAbkZgZ/AOZvD/
	 NL4Wo9RJUPEySvC8jlUKDg+NKccD9jHez7cxFZ3ItvOlUMrnpITY9R/QZSka3VqQeO
	 VVUwV5Eu/VyZqoz/yJubvR+Ch7JoEr+B1fbEjSsWE77h6oVuKu70BJiTEYWly5ozib
	 fMA5bZGR/yNlmCywv281Ug5XGpWlpwoNOdVwOY74OWlvxAzhQ3UzVCuRTJv6h+2BFn
	 3m2QtpWbiZkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175DFD4F16
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316949358.16272.5484648396360318897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8368f01fe89865cae918d844643f0936a2a35f2fc6dad9b0b2e037ffb6fec5b
Date: Tue, 10 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773169493
