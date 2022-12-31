Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D948223A7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BAA1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672504287;
	bh=FulqIBtELH2dMzBFXpdjbfMZhzAGpCG/v7cBCkQYIss=;
	h=To:Subject:From:Date:From;
	b=LfAWiqgauKLCgR/QVofBfqmAWsAAGKB5nXUiyJNvXl57CFpk1cHbXoGQvvrrvXer+
	 9Z9tbqg9HjbSyGJjAxTOZtSLtv9Y1M+3XEGVvIATdFkj8pXpZ+ltfjiNLJhdaKahlV
	 MhyBsHC1Bekig3dVDb8z+zezGjg8ntXvZRo+T+LTCAc0732m8d15NXA66ZlJLGkoOJ
	 bOnn+liIoASIzEoAYNH7Br1Yt+0wxlf1EK1IA1/s7KgiBuxIObuQObRlYFZbKxU+Hv
	 sl6OlAW2zkzg+PCpzNoSR8ej4oQ9IAj4/0vs+qZkf+z851bYjuwzYFm25VwEJbpWE7
	 XhFukpLXZqrpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F3E1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250428744.20976.80755405464808275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fca43cd51409483c795f01a08f81fb1e53211ad16c3ba29c89e46298e49bf2
Date: Sat, 31 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672504287
