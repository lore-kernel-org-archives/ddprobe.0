Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B83236A73
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763266254; cv=none; b=DtulyTMtw/dJKNH1TN2GUAJ0kK/vXWKPe+zOYayVracaomrs1sqBF1bpG/N75cFXaMNT6/n9/GmkHbMyqkB8sLHDiEW6+2aM85TwADaFQ3FQpPd0oo/8HYxkVBnvIWK/q8kXEf+sHPuywPrJks+KOtmBkhj2AniMMkCZYwCX8Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763266254; c=relaxed/simple;
	bh=nFRU90VofzgtP4BmBBqTfWnZoyHXfjSvYh6fP0jZvZ4=;
	h=To:Subject:From:Message-Id:Date; b=tUREnGxuJtFM8t1MmuYMEK2kxHfQ97td0F/SXu5IlJEkag2nKkKl6hnjZpNwpGYRdy+RLHZ9xoggrqixyzQme6nlVRaZGoioXmzN9CS5Lxda/J31zQe3gJk0Fst+sdeZbFvvSJ2Jr5s+cLb+XV9P3EZV57Xcslr80k5E7Ir4y9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ehsls1AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ehsls1AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5CC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763266253;
	bh=nFRU90VofzgtP4BmBBqTfWnZoyHXfjSvYh6fP0jZvZ4=;
	h=To:Subject:From:Date:From;
	b=Ehsls1AGVqL7yCMKNjrBv+gNrcyYE9Octcqp5VPDcMRwUOfSnRVlDp/iDXhBn8E+P
	 r54u7i2i2/6Q9g5A15V7c/YNJ5n2qkYpTf+BvBrD7SCIKDhuvEfvrydVhA7lXC5J58
	 e5k5sr00tTxQWpbthlTsn7AONXdMyANtQzarnTgAuZnHTehlgFDA0rrl/lHDhoPyEp
	 nh4d/unoxxI04ADqO5+k0/xZJ4D+ruPd9oh3Da7sNk8pnBV8MrVlwQmJVY/p4y1RTT
	 IdOvL7fGebn2FlnTfWN2hby/wX8s9jJw1WAXqnGf1pBWuwGLqeN2IaYk3n+qXIWy26
	 kjuJhAZvpfZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E8CEACEF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326625358.13656.7572062633417050743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9742e6357f6837e352c4601d92a416746398b7b8083f958cc24dcc84e57deafe
Date: Sun, 16 Nov 2025 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763266253
