Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBBE29CA
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72005C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663756853;
	bh=IAtW5PQdiHVhxgUY77zz7ggXRlFs26YrEP92ikPwgo8=;
	h=To:Subject:From:Date:From;
	b=UtW+kucD+iowJbtKa97XnPHCzmMYsIP2frnB7Z6x6/IAh6GypFITe0OqUV5agGUJy
	 ul/QdH/0EzyC8cuGfCy3nHoCHLwUB3P6qF5nzsXUwCjiM4311tYABJDiDa8vmUL2j/
	 IDPxBQdWhGQPaxFYa5KO9C1vlEgUUKwH8j2pLbpll0NVlyegpJG62V6hp/8XKZ6hR1
	 XlKjZu5AfHu1quvOndF68BnfbMUHBYOiHYMPcw9bnHVa3ARflXd4afy+umedHPDPRp
	 PbkYP/aAAqBWzEsy8FZQorq+Z3tjfHCmWdp1PDZeJK4K7snoBbp7O0Ty3E3IHuy5cN
	 GSL0xSB9MX6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53057ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375685333.30181.14455190774113114859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c599f29cd61dd7ef7c2c7949c7f585667e39c8e5bda8ec29d80d4dc8d6ebdf
Date: Wed, 21 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663756853
