Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8C02F47
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3FAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666188053;
	bh=QJBI8/TC+8/ayipXWU53df51jjwwiyvTxc/0eOC2kzA=;
	h=To:Subject:From:Date:From;
	b=SoY2zyx2pSXMiiz5VyH7De9/jOvtqa+oZFRXKurmxAhLFRe4/ZNVLzrnbObYsaMOe
	 0/8ezog5FR3O75MP23TdEnbCd2Dzep454/1GUJGJWdiWZgIqR7PdaYjq73w4Pu9hct
	 mhRhZ4/bvaxTSrawDUckSdfKld5PNDyuNlIv0b36NNfZJSY3Xg9vQJHtCo/hJwYKm4
	 5kkZHgF0ZDQAEMO2uHKcax/gy7LPIGr22BY54zY/v9qn9pU4YaJJCZnuV8mohuKjKu
	 hUcYosG1z6Q3rkqju+krjHpvMti+rAcX4iyAKZZrkOda/HesxZAQ40U7tVrTatnRRH
	 +cP0Eou3mWuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B1DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618805333.17538.6697389772369253707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e677b426ec6f17ad7999aac9f072dbe259e08d20c91bfcd32fd319166ad7fb6
Date: Wed, 19 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666188053
