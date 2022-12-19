Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83E86FB4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C24C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671480087;
	bh=LV5U1ysip1VBIasUEP545cinHvQUjgpeJgke8l3UcEA=;
	h=To:Subject:From:Date:From;
	b=E7QtvLyYq36uIlltayMUBx8pHQaB0BcK2snwfiz1/7KX5O3FNNaHnMNm1GG4vdp6G
	 9kJoX8k3qJQAcDH/8iOfNO8D3IUewvPFNamXijrHvxnkK1BvEwqO0Oua51y/ocsjwP
	 W+yoo2VU/i/IxfQ7999YYdo4bjhqje5vOw2XgCwsaemfvbiJpojcA2wbXcbWv33xO8
	 oakvXcIYfz7ebPN/55q0x/TxLthMxun4I5TYhxXGe5gBndY3QqSet2h77ysVCOb+Aw
	 PBedzpm6mOfrzycpuWbEzy4qslzxDeXM1bBGZnOpdVffcIDz4MgDABUvzS95aUVqxU
	 AwiLfCiWZJtYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FC8C001B2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148008740.26043.7991970561802493158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0f4f407a003232371d749e4eedcfec10067f4d5b9b869cb1562bb3141a8201
Date: Mon, 19 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671480087
