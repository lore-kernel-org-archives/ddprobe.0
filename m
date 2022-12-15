Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DBD257B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC656C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671091287;
	bh=i4kYTtixflAUChr1K0C5xFkbFZmIRpccKu0uuK57nd0=;
	h=To:Subject:From:Date:From;
	b=KGk0KZTEna8ZpsunAdwBpxdUdlezTta8IHOzIBwrsADeNLFFAqQtfqt1pGBRJev6e
	 ylXuHDsYFEcsCn1/WYyeZJ3LnjafURyiIPCSpEg7cJC+/Q+vPugo46HQKUHcMbV5IP
	 ojMnAz8NEUQQEm8MR3qH/3DgPASHwIEhG3bm4cUGIkb8f36ZOh8W0yhhyg6KSfqokX
	 2Ra6GNLoKkLRgjfFRf5/92y57z3Q4F1GGNyfKM1xrVJzNZEs1gmzyb9QVNV7FV8Lrc
	 f0anuc/Zqmk+XoFbD0S8IBdme60tQPJlZdJ0ZnHAIpnz0nkwzTGREOS5audCNXciLH
	 5iz5V99zG5TMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C36BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109128755.948.6162424513365881898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0039ed99149b07e236f09d71843905ce9d4dc155dcbd8104474fd34146bbc936
Date: Thu, 15 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671091287
