Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BEE2596
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE0CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672074087;
	bh=JrZl69Hqx5eY1KAnnjNfFkiZqQpY3lYKGDaLv+tpq9Q=;
	h=To:Subject:From:Date:From;
	b=ldxmbY217Jq/LGVHCJ4Mp9z20NxEsL/Tov05EJfx7TRKnkbalQHWgGJy/86JWGTYH
	 /G7irr6tC+Z6Ewp9SEDoe5yWyyjkfQdGYrP47y3nXJKID+dEMioqDNa6+CrF8JTjok
	 lNT0Ls5joLAGUeu66IoDLZwQRv8ul/E9xHXE7+ni31WyHY4cZ0+jnflyCSb6L8lCWr
	 STX7PL0ivMRXOQyPEYfX5iY70Izw+FqHExwekDXM4a02iaSpkVgGh7/nlvqru24/R3
	 lbw0pjPIsTpsUoJbsRJbRr50ABBOBhdsaAiJ6Z3IATGoruqV09uO12AWVx6hMY0y+e
	 aa+IW3SCCC1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FAEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207408739.10492.13437261162321897600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af2efa245f16d018333a6af5325d5ba128791c6cac260a0f0e4e190d2627260
Date: Mon, 26 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672074087
