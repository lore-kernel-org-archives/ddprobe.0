Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDD2517A6
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741800534; cv=none; b=nKc87eXXgVsbX1ERamO//Dp321vUoOxHbEhRygBAcEHmtBdkoni+rE7LjMaJkvQ/gGReJyIx1IZ2/lu60wMfHgH/RwL0ImQ58vTMdoVOufCKPkd+ZVSM1eymrXRr7ySJSoBijegE04KIFAF8YpABP1+njsNWxmHWQeHLZ9/K9RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741800534; c=relaxed/simple;
	bh=MEpvy/tN8BaG0MrCuDfRAla2ZQ5MAxBHbEhPqjPq9Vk=;
	h=To:Subject:From:Message-Id:Date; b=qdlOsY7810Jbag8g6o2d5N4rwRKKNFTjhdtfnGyveBD+Sn4P6r/MdQVg4Hkq/9YKaKWcZEQqg2FoQSnMEYA3zTVJnG/oq2VEZdcHU/OsIADO8rlvcTY2jDJl7Buse79A2Ai3UJgpY/ktjlkgx46QGrgcqQlG/Hn7kgpCgruWwSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjtAnU8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjtAnU8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1889C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741800533;
	bh=MEpvy/tN8BaG0MrCuDfRAla2ZQ5MAxBHbEhPqjPq9Vk=;
	h=To:Subject:From:Date:From;
	b=FjtAnU8ivSmjcg5qFFlvFX+wjLfMWpM94LSdaj4YP2d1CnbqTylp7Em9vZmpN9HV1
	 De1qVQy4RkMCP8SjfVGFMfq0LZ4p/UtB8LtEXfk0CE4tPU7kVNizgZFqlLX2Rd+Je/
	 G+Tz62U6SblwQP+DyMQHhLWKsdrfgSUkqGyJCyLXElQVA0Cb7QkM6IuQqgh9mx0FvG
	 L6tOQIvHXKOvB0fwkGDvghKqWB3ppawMieRqruzLtkbkwcmFxJxF61woHhnnS/Alks
	 43rOZ3Fr4m65KHaZkF8zf7WLChD8YEZdoU6H3yzL9gm+e8qIqoVEmbD/LEtIMy3DfB
	 xIbXdJ1hmwQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE4AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180053362.11749.13399084325095732176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3ca572d1bc1fe4d1e256473bde5c37c36e18a6eee43735236c8c885ac30358
Date: Wed, 12 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741800533
