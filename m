Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA8121344
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad/VACi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EBCC433CC
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698949696;
	bh=5tUTigJXZ0bqdbOtU6wV7/aLRdtA+nLdcBbQl5EarGA=;
	h=To:Subject:From:Date:From;
	b=Ad/VACi1N9G/m06ONWbY1+Mxm+9TyqNgItTDTpt6LcR4uapmPWPPw87S2m5ryeemp
	 /h+dQG8F8wIOY+HpMKsAqFdhlAPMdzYszi+6JPglAiL+4iBTrx9T9LozM85B+yO8vf
	 fWJ1hIk/wzG8up6whWcrocnU6VHB3sEyif9g7hyBaSvMg/uXnkP+IkSrU8OY9IQ48H
	 HN7UzPK/cFsU8OCPGYgkYfuxuRWVtQwoz7EnGqr56KO9zuZDkyQ1jdSuUk9yPmwxg9
	 3FSR2SQm4SMeuLIO4WPo5hpRNppz2kQ2iwwJ6h87ChjwakL2Pvpv9jc+FRN/ecr5Wd
	 1smUNFbb9Ht1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EC5C0018C
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894969641.27465.1443884711557714002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6513a8e61e4556a5b445cea88f4f057be9ef11bac603e4a24bd95276f6581ad8
Date: Thu, 02 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698949696
