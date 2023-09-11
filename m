Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A97528F9
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F3DC116AF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694474048;
	bh=K3pYWK3hIqVSUOS3e5gNMdhgyQaVkTiGhhnWvKt19Eo=;
	h=To:Subject:From:Date:From;
	b=XqrbB7pkvrJvjTqQ+Byngr0g+h/RsU71xYdc1bkcSDsGCX/KPs8a+BJpmFTi3Flc7
	 Bs+F1Jf4HEfFoEx/iHB5er2Sv2ECJ2hxA52jY4ULSD+sbuZH8+/tUcRqILi2adwsBn
	 9M42s6WA3nG6bzq/2J1QPHlg02hv8ui46qG5CfCUPYvh6WbT8hTrlQsQGrZW2RloIi
	 6ju6Xhi5Jr5eoTMel1IdSlvt1HRI9E03ywivH10ATGrM9RoEoAd/xl372IuBg+yZKc
	 9XqjmZlktozrRNOnuRZpjYWnHLq72OwvEUxjzrskW2N2vVYUIBi8byhGmgMMv8eoKU
	 Oj9zR64XusHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FA9CA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169447404865.23748.23078988019138500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d2bf68672fc94b55395b401fe1c2f9e36a59183ae26406369dee57b1857d9c
Date: Mon, 11 Sep 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694474048
