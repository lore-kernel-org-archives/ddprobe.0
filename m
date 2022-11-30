Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB26BA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74704C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669843854;
	bh=Yo5IhkjcxPJ/3tjH8ccaxvZ2X+CT6p/3ctlSIl4odf8=;
	h=To:Subject:From:Date:From;
	b=XIzDwLWn7Jls93ER+qhcEG9zLWbstoJs6oYhk41fSyIza6P1B0ZI64CDbNQ9m4hvt
	 ofCMvBDApnscyzWK1hAQbXeNEXMcfXVMBIC+ds3z99OJIqOF3MJifd6VcGXXZXocso
	 z2CtAuXFNYViZ9k57p7bJWXkkyeE0Kr+7OHzdkKaQ+pa04lGjOpbrq3DdeEq79fXDz
	 G/+HxgCdE8jAOYy2GfyWG63WkLdLxbbo63lwJj5Aas/jNDk6Js5RNFUzQzGJxsoAfj
	 NEyR4S4iiqx4PMXBtwFJ2j2jGkPbCpnA9KaEdjNrI8BqU/1lHswDHyoTt813U4+jHh
	 xVdVqTz/5tcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5765EC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984385434.5320.5034362508754195231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212d7d0e995f8a58e78e1f0f8975845291b546885335cbd6aa72d11ddffb11f5
Date: Wed, 30 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669843854
