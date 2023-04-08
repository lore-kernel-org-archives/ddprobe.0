Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A063110A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF975C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680935466;
	bh=8jWQhelBnffmmBNwhPnOQlnd8j7kWSym//ShETyafH4=;
	h=To:Subject:From:Date:From;
	b=HmWPl8aGxpVIx1OrAg1H20UVMnwxbWxY7fQpSZla/sx9GlpjFyv7sLUWO+A4ziGlh
	 iUghcYxjL9srB1RgSea2oyEAxDkTNYG9DqcG3uq53Q85Xh0W3VJqqFePeLi7oaghc+
	 gVSmoHqmWzQ82qURV7XimN0WnRPT7rSyZJaVmeazKTfRz5btDmPynYStMJx88oerVg
	 e2hLwWS3ZW7MioX3vF0KWKQ2RD5etiT/EsUnl5Hvj+kuCqgPGbqvDxJQTHZOejVyfK
	 Ps/TqHGVyftCgeMFIf1mG2FwOfiOoukqKfcN2x0iEYxOJiLIN/DNkIgu2GEKslUP8p
	 wnS9+yjEf0/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0561C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093546580.22426.16468929381116443147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bf3fb072746b2dde071cf160f334b01454e6e69497167117b3f925103648d7
Date: Sat, 08 Apr 2023 06:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680935465
