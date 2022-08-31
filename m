Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED6233EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8937FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661979653;
	bh=Zr3AdTKAPIFkoeYJgAVyo3akLqVOgBCMTkevbP6owiE=;
	h=To:Subject:From:Date:From;
	b=ibgmECG8svfo1KZNm42JluCtMIp0GCvk8SjVNZp6eR/nKHbqZCX9jrAGGBzNN2J1T
	 9YsusEBJ135744ngO45yCPsKtUbUQ+ZPMymDVH4vZaD2R1Zolxtgm1yVZUVMT7jFIp
	 CJKtYYlcnd+cD8Qe8zkDfJ7YLzo37g1xdWuw5NNbLsuR1/ffwBCky9ISzk2D3IFbac
	 4j/UF0fI4XIzASbZgawMtS67d9ony3DFxi5mjVdSaXM2mK5QdAgokhHb05QT0U0Fbc
	 2r6fJjW0Hx/VcyCZTxhITTrIp28gG4WPbH9be6nZV5of9gRvgxiqkYptnZh2ohvpgK
	 I/9RUL+BOBJIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52270ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197965332.10063.12621049084838602512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409609186b74d240063e63c9b83e9caeb9b64cbaa284ed1e8789a142c0fec5e3
Date: Wed, 31 Aug 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661979653
