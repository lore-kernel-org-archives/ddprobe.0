Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BA91C2A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGVSDYQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BC1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700489896;
	bh=Zc5q8iIX4TTLy0Jcn4z67x62FjiZ2hn7qR/KPhyJThk=;
	h=To:Subject:From:Date:From;
	b=WGVSDYQ3nFMICOWIkUDoLB96N47uPTAjHVi+IyPkpFu2QqFG9jghGeW2jygnmdsSQ
	 PgQH0iJRiko/o7dD4zDOUq7cFD2lwWd5EUgPGbBuf4Bn0LsUv6ABM9vz1eYwThGiEB
	 2pme0QOrfv3ZSUvRziqCt3u216FbfPCxG9JeDG9w9R83wnbE8AtL4yGXPupjGTA+6X
	 viDYq4jltljZeUSffxiMVRWZLywt+N5xK8c12cwhLPcvEbDqsZXGCUWHwf7C+SnJVh
	 v8O/BTpNY2HoVbuNwD54y4kNCpP7IeFEsSj+nmc7d384zTUegNuUkSJEgZ2xyUijwt
	 IVe190zACOb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D14FC2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170048989637.5479.2785169175025829499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28901490ac4eb881d672c7a178fc296e357ff35bcdd20b1d5c9c045f3ea8bf4
Date: Mon, 20 Nov 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700489896
