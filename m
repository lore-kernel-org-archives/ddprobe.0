Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94782584
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C34C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671545487;
	bh=7AkjVf6iI009lEwuPsvnsSTtIre3Q7075IYW3Pu1kAQ=;
	h=To:Subject:From:Date:From;
	b=dvi+MUAkRFF0H+12PqcTL0+n9uJxiDnTraPze2oouwXj13H7pXDtQT5dlzb7eh0X4
	 C1DOdG65DkIkcdiCiEc9Ly3DF57BwsKtmWkvGHxgyFvKRPLsLRH+fd0AKMg3Y4SxdJ
	 XbCTTceB87P7bPkNkLhQ1t9C/LyvLyIQXue/LAbCQPn6jlt6gavnfS9Snd/Ht8Ju5j
	 qYeIaaG7jZzRkon8AW0sAk5KwWVFdAdAEyLHaFebF/cNh4g2mdLGeHEzo2970Y1b7K
	 qz8cWSwxnhFYy/bsIrFcnXvEBl1mt7L5IRIxNJ+1VoMdbWqx55Yxli3fAXOWHqtrAa
	 D+cRM9np5WN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61575C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154548739.30332.4140024517074124383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fa975a10494dc08c4d9fa42a1d804fd6c9106ca8089cf9c65a3077fef569b5
Date: Tue, 20 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671545487
