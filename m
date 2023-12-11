Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB04487BD
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecB9Fn9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D88C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702304896;
	bh=qCOUaw89T1/r7KPiQJfbyeEGfBlGDCQZM+w3xHUpINQ=;
	h=To:Subject:From:Date:From;
	b=ecB9Fn9D0eBMaCEX4/69dGsHoAGDUidz0nsNIA7RNmxhlZrqG3lqdI2oxLURCaQvr
	 feQnvt450vsiieQVNBRKcjdPnIXmmfoTzOpIfL5UUIjSORyljMyngxNli7BFanvXiM
	 yviOhkhN8Yd/VKCcBMJAyj2osWDyiahhRdnVef14z2CwZ/SXNkD/1iCDdfz1x9TgwG
	 RhyZ56yy0UslnxCk1h9G4Fm/bFDraTK+SKsrzBV3S81oaKMJd5JM2cfRDF7ls1zY69
	 5yJAA06KjejxGA/ezRbRB9rV5/iSmvJ+qr707hh2tOpKIsb/Vz4gyJwbuaW4gWVYPg
	 B+PLncYMzHAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D373C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170230489637.31037.17712593785431809006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aec47d54ebcbb1ef26941190a7866290c45907e59c0b077f4490193a71d960
Date: Mon, 11 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702304896
