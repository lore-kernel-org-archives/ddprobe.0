Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21325C81
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A9AC433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662556853;
	bh=xBoaUbYjVZ8BcNjb7PgENJ4nwsDyEIhrJCG/j0e9JHw=;
	h=To:Subject:From:Date:From;
	b=ulSHeu3k2k7T5QzPgPOTdWqriZaG2Wix9vv6nUYapLHPn7mdL3+oiKbvqWAyDbIpj
	 NMQfjguyXnOB9JlDq8xf09dCW85l51An0DGmdUCtNgOd/xmJPNPByCOWaOM2tps9/9
	 nWITPrggisAoRPDqBFopreSBp6qMoZXSPETrWts41ay3Oz3s0CFt/+FvbmTfdER0pt
	 X4a1uZRJkxZI8Uc7zoHTZXV8ABt87LTeKR2lSVQLVqWMk94Zq/BWIDiO/0d5nEcqx4
	 jpP/+T5cB97oUnMhIqbFejRVVSXLTadAhXLvxW8iu7p4a2OmN7m8y+0jKUZ0g0Wi8v
	 FtuBzmgC/xLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F2CC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255685334.6525.6794127053648866544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d4dc07fee6a058b02c279145c9041af6d293f4f2a752bf61e85cf53cb0b951
Date: Wed, 07 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662556853
