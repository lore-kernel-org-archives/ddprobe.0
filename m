Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FC115A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE29C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661560252;
	bh=aKvticIZOyw/eVQi2M6/CTlz7GF0JycSoLcEvk9F/K8=;
	h=To:Subject:From:Date:From;
	b=OTkVSVhWlD1oKuXn0No4yTiOJQULPZY3OgkCZ7IT8axlAwhtwhHtC1eAad6ScfjY1
	 nPbKHUkrgNfo0WAenkmS8BxIhpGDYHfo3lgGU/SG4LkJwv35uiwi15iCfp6St6vHv/
	 XhNB8uIsEAAQArPrLijCgSvXdEgopCCv9BAWLRx9zbfB9frUVM5ETOoKmr0c8vYYb8
	 kA/TUWDD35lnehmghAyruVkGtDVfCe9qLljwTm5lBsTrVqYaPHaiT8Txb58wH+FlSx
	 gshcO/LXtKfylPYJ0CyMmevjo7hbrPF3w5c6L0/otkAhgALPT6XPQXyA+UIpIn12iH
	 taw7BqVNy2T7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5761BECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156025234.18685.6239632979764160260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3fc9d7501dded4a043852662703a1ffac9775aa889fbbdc0fa98cb475a1540
Date: Sat, 27 Aug 2022 00:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661560252
