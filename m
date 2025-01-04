Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236291E507
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735986354; cv=none; b=RCgcq2rx1C3JWs8rRDtJ1ozxL+LYLltKzu6NIn0BGuYAV3FKmPqm1bewT8vyYofK6cM9ZPn1PxgoZTw04Xl2G6+80mA0PVXzh4j4tdb4cXu+3VD72rTWHLhyVjt/NiE/68R6F7bECZR4mCg4BlCGeRl9t7wVhv4mTgY3tVugXHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735986354; c=relaxed/simple;
	bh=lmVqKbwC9RpGg+wDsUkCKci9ujTsNlZ+gxkPVqgX5eo=;
	h=To:Subject:From:Message-Id:Date; b=oZEW/JM3WuHDwj0eirYj8U1ojtve/0iOJILjgWRj089LkLbHqBc3ngUp/b/SG0p7kIf8kIEh7U65AJaZUE3JBCmU7yfahU9eSgu8/uTOGVIfpq2BbvdJ066iz5ZkWie+S1EEw5vMOLBui/37rgZXUvXN+nC/LD7NBiZefsxxoq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6PJYDlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6PJYDlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BDC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735986353;
	bh=lmVqKbwC9RpGg+wDsUkCKci9ujTsNlZ+gxkPVqgX5eo=;
	h=To:Subject:From:Date:From;
	b=Y6PJYDlqeh8P3TJcZ+T5gU6pZPCeXRHiIb0AdBqKfeAY5H5jJuxxHT21FR5AWwwQy
	 jUbtCybpA773lFwzDEjqMQMe5Gty/lsA2kSgZjg9LeAk+AsINa+IRXEx14MO+WuXBO
	 uyipTweSIlBHYzPBESolLrHllhknY0nT8+xmnb4uUAH7zg12Hn3ZNWErASsiRikyhT
	 3b1BkcCzhS5ByLlbD5+cfTQ+y+yDf1Krxpq7fv/2WPahFbFIOKq5/X1LUAeBd+ds4D
	 fYWN8j/qbdtD7lEJqBeb0XXYMlk5fgEXpsTuTbUDrVpRkrH6r/FXP8JzPr9YK2wa6g
	 LPcqEN/3J8Duw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B45E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598635358.13032.8211461689228667278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650b8b129e1c20b6366501163e0514691666d549b16350c32ac40cf1c05fa363
Date: Sat, 04 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735986353
