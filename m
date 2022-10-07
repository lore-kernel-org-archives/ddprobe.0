Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58F4805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78694C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665114053;
	bh=0R3wFTnEUTC8dtYPcpsxN/Ngp8lPaLbqYYGQ5xGzYHU=;
	h=To:Subject:From:Date:From;
	b=l+EP5zg8aECVxxTZiKTshoe/nGSm1KbLQ/IkV4MtooKoP9RD96zwyOon5HPqMm+iw
	 2UwPG9HPGTqiPJaMS8sKNr8aNu82zLDdsA+1tyf1e/qRvyx7UzpJMAtQFbpUhQev4M
	 6IeaMBJicAzGpT4ncIvLDut51EEdaaVyk1FyOuOw6kzzbIqbwhG+Z4+Wc8SnwfPzvF
	 ovSeNrr5dSDRj5t2Ma/DmvmtbP/jEJNynkQn3G10SOE8HLcTfdOF3aCm3lBqhFyjeB
	 hM16ZyrFx5PPPA2XSCRAgy3ekCm7qRSBqBGFUWvUbUwO2Zi4wbJyABPzkjfbBrDWyh
	 GIXlt1yyAcLQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9F1C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511405337.14553.16123619474411962967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1696c4a5f8a2f4e4524eb7b3e2e8bb7398fcd6a7130e12b49a3752bc55164362
Date: Fri, 07 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665114053
