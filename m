Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E725F45943
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvm2FNxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFBDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700134696;
	bh=NHtHToYLC0z9tGw6Dh0U8EYzYi/Ni9aeLBOdg31/rNc=;
	h=To:Subject:From:Date:From;
	b=Pvm2FNxSkzFltKTCom0LpCFaIQBbG50yHyUh/P+zB5kv345Gj6zOGJgcL6iHbf9te
	 Y81Wir9+NlxPG52onv3WnEHHPK/SEzX3yzEuAxlyfmLoAvvBwRWazXorqm7e5l/JgV
	 YS43Oisejm2aQjJC3xxYGedBc6Yl+EcXjISWOl3i0Eyy6Jrv4sKsRg96O76nmBSi2X
	 mVjhJHA59j9ZbMW9mSUdC31qZgWXASHs/Gv89bPi0VZD3K4oLg0mh5WyRbCFdnPfmH
	 ey/lJ7/t2yJkUPGJr0BP9LdrNJli90VfLb5Cr7jZrVezZhYLjm+mgcQW/rDSv4rdYK
	 qjmG7sIEZScsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62152C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013469639.10953.2632218300669679674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bf9551176d7e3d698e1507a4ccca47803746d23b3caa043bc48928e3b09cfb
Date: Thu, 16 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700134696
