Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FB812F5A7
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713543023; cv=none; b=iPeOC8PtBAQ87jhmp1/bT4g5YKkVQ7y3wOxtZl2YkIK/S99/+lrBbx6o0RrLZ4Okht3QU2gL+OuZ4yo0UsPLq0tcdfQpAxyYTyjnQH+r9mUc4TXoAwGRX4NvrvFf5+3Exda/3EjQhjkpN3JXSnwZEZiANAeRZ1qJcJe3m+ZjoP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713543023; c=relaxed/simple;
	bh=tttfiymqHcXUPCrDD+tAi+qgoULScUDQlzKn6FceNEw=;
	h=To:Subject:From:Message-Id:Date; b=WgdCQGY1KV1QTwoIKdQ1TBo0ztI3VvsYu5qYkvvQJB8+v/wKvxEEnm0IOhybR5g9lojuKQZM90sc1trdmstDEGva50EbO45wGwqAt426HbgHQlh+UFRSpH83P9ODPuC0vuD+abEaEdAFwN3tBY+A6MYEZFkar4MXDHlr7HsTKHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwfSDXEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwfSDXEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32CB7C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713543023;
	bh=tttfiymqHcXUPCrDD+tAi+qgoULScUDQlzKn6FceNEw=;
	h=To:Subject:From:Date:From;
	b=SwfSDXEZ3RkYAwwIhAOTfU7LkGT1Tg0LkPOfvGqjOaTSwzUNroURJTFZyEg/FNd22
	 Pe7me/XhVZqxq2aOCmb377O/5SncIdA4h85Losr+PLgyC3YdmN2dnVkYsphzwFHmJP
	 QKqkplsg7zk0t1iXbJF/AcJFqImvxERzu33LJjMW6VlO8GJ9jVIuHC0AymsSdQXvKd
	 v9PT5i6TFm8RyaupHI/+b2Dl/HTW7kPhIqHa5D8Nr6SvIs3U38fCtIZDQnDy/K5DYc
	 lKPjf7k77BphB7vbv3+mgo0l1ud/pplOzI2VKZ/dPgvaAvCJJdNzq81gFuL6d25S/O
	 pjcorVLaE4QOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC8A2C071FD
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354302288.18201.9128093139985428880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e5cc70c9dca4acae20cec3837b7153c8f83003f2d596b0d8c4736f6bb1ec11
Date: Fri, 19 Apr 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713543022
