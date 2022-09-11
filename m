Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09D17F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694FCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662907253;
	bh=IU8kv4SX7tQIU1JKiesmyi78gmU86XsenBr8M/nl+eo=;
	h=To:Subject:From:Date:From;
	b=c79Uu+ObvZ/4l8PRweR+eJWfPHouAV6Jri3frKixNhi8rLeZBaabf8pRnuDFPIUlG
	 I5Z6AstYBwXUe5kyT5cpIkQ63k4vDtSSnP7Xg/rsccd3gMKcgya5EqG3GbXdKr19FE
	 yn5lvfa5r5NgB4PyzEjssPidVqZb5C9rO8AcT1nngpEISgzULGCFVUTWeUQUGwsXvM
	 GKUPAaM+mO0cM7ct3urbHj4hHe1J7dA63UAvJ5WU/X/Du7OmyYzmDf/GE4bYojn5Ld
	 KmNyFiRVJuZg2itLjjHSzH28ORARsnXttZ9wJ6yxgn63/B16b37jFL4mWkjWnpvUe+
	 6XaH3uasJ5/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D08ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290725331.18406.15862788979483241485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135039aa669e9b378755eb34575f28e81cc47a793d3a2ca2219b2cb2424ad419
Date: Sun, 11 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662907253
