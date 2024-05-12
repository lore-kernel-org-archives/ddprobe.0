Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AFE2AF09
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715537543; cv=none; b=rVbga94Ziit0gteLc/w3bYR/R0KnrCx7Y6sz0rXCdKF5+8lBoFMokUy8k32ejNaX7yxiXiuTr5zDyOWImVlpNWTr9WV8b6Lg83vLigf4xk/dwOCUo60g6X2i4NccX1bBUlFuuWJllTBwD4Oy9Mx/ja0Bwv4PGt/eXiK/ddCo/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715537543; c=relaxed/simple;
	bh=CzPU7dEoFLP5sw+hsujrD/wO4CJWDGHIPk/RUXf4Gf0=;
	h=To:Subject:From:Message-Id:Date; b=kivuwUU1zB/GL9QhpM+6F1RjcjW3LlqFJ5/pg4oe/a/YW/VXXY2yzwsLz7YuKDhV94egY7JratnuMDz3FgINgIJx3vbZroUq6K5m0td6eK+KwuFU4NQNNRI1p/MlOVYd/0MBu8yXGXcCQ1nfXooOTUt67OZ8FoNxF8bN+MOmAME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOrYP9nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOrYP9nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0852CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715537543;
	bh=CzPU7dEoFLP5sw+hsujrD/wO4CJWDGHIPk/RUXf4Gf0=;
	h=To:Subject:From:Date:From;
	b=oOrYP9nqIXsV0SSYCi5TGKYpnkjeGv0GBfWZVI8K7TB3FeWIf+uOk8X0DcoWK3z8v
	 0uOlZpV8LyTA9aweYrZm7U50ycZoVwQCbQZBBGi1HgzVrL6qDTMsAsfS6S5hiotg5H
	 c96kRQJe42LZ8yz5rKAaxiXqAafqSv3uYdd4L/BuhZMAdc42WK4onc88FcXSDfB6eO
	 T8iptChEgS0GJdfSsrjbppKOXqlyQ7yfzul0ZTxZKafXkhgbAUgJKZ7PqI1oUQ4ywr
	 LdGxZxC4rOkqUO5HdEAg3rhFRiy73P2hnCrUqLlutdnpI/Z68SWEenoNtojpCVRMKo
	 MZrL+mPlLwCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1FC0C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553754288.25559.277483594690347383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e677de69a854715226574c7dfe07db4eac78a7db3aa0d32010797674660ce8b8
Date: Sun, 12 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715537542
