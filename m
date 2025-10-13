Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EC52FE04D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760348394; cv=none; b=ghNLvhPV/JtEVzFxw2Zu+r6mDszUZgKZw4yvWGhoi807X+hY1Nqss2aMPgKU6NAT1+80TsOPx4xMyMSyvns0pJ6k20Gh1g4EdNcqohv3DV+GqvYa2ZSgcvlrZUxVp7R+s9w18D6Y7IZGA/AncM7B3qQtirbP58TPqXs/mXFehOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760348394; c=relaxed/simple;
	bh=zcOdh179kUfuC2NSYR1R4bh8vRQZJVxXVsBwZ9S/ko0=;
	h=To:Subject:From:Message-Id:Date; b=eYGB2W9MUcFhoP091Fd4/+j4zAg+SUqjZJgMUkUPRPBOnXYE4EafU7ep5UsyiIgqu3KBgCRCRIqub5EEEoxjHlzc8fqiOwHxfKJGxKw1u2hPMSFXO+AQSLmPebU8ZoqroCGuXZbhqZAVZey4ybQj465Zj0XMa8aYLzGEvLk8KCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrccck7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrccck7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5245C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760348393;
	bh=zcOdh179kUfuC2NSYR1R4bh8vRQZJVxXVsBwZ9S/ko0=;
	h=To:Subject:From:Date:From;
	b=Zrccck7jQ2rKtTEMi5/FLxSlyhZQN+uJq0KqAWCnbqZaGEdaKo0haNuk5Tsu+UQ6h
	 4UIfNp8BGi/CghU9hrbHS0kSrXzeM2nK3J9QkEh+NE2EnRMEXoV3KTBBjBqZ+7SPi8
	 oxbiXNFi0+AML0bLYvII7UGyQyrm2NcqcFz+QB8Lq7Gr9bCQ3nUBDcuUjbUE3yZwSr
	 H+qBI+3jDjS2eODLn+dMRUSl1f/QUvWdEfUQU7wXxJ96P43YqGXr9Ait3u9oL9Yo0r
	 EvcJ+8WVCHAx1wpeJ17jnAQiktS4okoQLRZs0TcRA6J34nvH6WVGcrlHqdGj5uqdSq
	 C16OgNQGufzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117DCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034839358.18824.14292419292554011862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd42696e89aca41d6bcf148e6df297b37c5917036bac0f50debbb2b4856361df
Date: Mon, 13 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760348393
