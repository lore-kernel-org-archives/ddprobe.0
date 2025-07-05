Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB931A238F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751705994; cv=none; b=jDzsXsYfSeXH7az92NMZM6diRW8vfZJhRNct0YK+PwF+UlxIT2EFLfOStmTxxwnkUTNqRFMDBL7wGMGLxDTkb7/xzm/HjhVPbuV/knOSOG+wIg6x8tVoki5B5nZN5yLoSobYCqMhZdw1W1eutTxvSxgrm+atZJ1JKxw8axxZ46w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751705994; c=relaxed/simple;
	bh=vjCg6cefde4fnaKTfXnGaPIdHi/SEzM2IHlCXPjrri0=;
	h=To:Subject:From:Message-Id:Date; b=ORBA8hBbA4hnytx52lQT3TzjE6fKwzcMkwyi2XNTNCfXZsNAg/nLrlIexbO4OVxC0yt03Epktbg7iAymyGZUNaWus7rb0DrsGC2l/YgH12L1IhNUc94kLkDIbncf1guEpJ+mB9HzRHCBSBvMrHOvrv7y9dfJfm/IxwrRgIY2ibM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxQl/6av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxQl/6av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A070BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751705993;
	bh=vjCg6cefde4fnaKTfXnGaPIdHi/SEzM2IHlCXPjrri0=;
	h=To:Subject:From:Date:From;
	b=bxQl/6avqjo0zECcSf8Ro2vLyM3Fu+3kgElzGtOGXv3u5vS/3+jgTWSV3FF9U4oNC
	 zcI6qktkPMft3cL+e7BsQvXkTBB3d8pT9z+frAI3DaHYGx5slWom8yrQOi9Vv8sItC
	 nkrJM03Cl0OL1dS3PhrJSm9Rx+3BXD5cI1xMvdgpoUvAW0WlITkum09uzLqhGBjwQ6
	 vXF3tBrRSZ91p5obE4ufbxuI61t75cvTNz0eMRgOMCsP6Bjt4pK3+bT1X4moDYdefx
	 fisy5CleM748SaL+uXjFjcW3z+OQObs2Wo+AQDAoP97WiI8bQP8dZ69tevtQ2fvh1+
	 /Zr3dpy06ik6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3DC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170599357.18559.16694835133966907532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab673b49ddd5de698c49adc096e622550a776145d6ed16fc9a44870f8444293b
Date: Sat, 05 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751705993
