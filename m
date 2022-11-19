Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B547D3C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDD1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668881454;
	bh=xb/qYG7hm2rpQiEfSKaSbjuNVUE52P1cd8bjqdJXTmE=;
	h=To:Subject:From:Date:From;
	b=eWCccLkd/lkSym8b6njUFK7HYsp2M/OeS1CRYs0lvWHDS2iD/sAW+M7mkqriLsBJQ
	 wih0piK/zieCV+dGbk2idI2WwCm9I9caQaF8XVAM+Vdt3KeMG7I4n/d1gD3d/m9ncz
	 JJ4xc4MbhM45YvMfLsGkUaP1Psz83BMAMGQtBk+3JbHhb8y23UxMDbGdAwDvHs4lHE
	 4IkcDSQvtQym0lWvgVGjHX88oEX+DD+08BNPuoRZDO92cMFhrdTZi2cdMqLPqligNZ
	 endyhmy68ES56NpOQfFPcXDVvhVyBhEO0N+cHPyuDhqpGqK1KwbgR+Sr/zrFd/YiLo
	 HkVlbYXuSUd6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571E2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888145432.345.2690664014580537766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0443cdbea90ac6052159acaacc092879804f30d4d759667aef16051bf99cfc6
Date: Sat, 19 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668881454
