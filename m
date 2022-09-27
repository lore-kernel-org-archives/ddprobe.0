Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FE84A18
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E91C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664306453;
	bh=5G6dbQPFLgHJzvj9ypeI/NRLLd8bqsfWiopjreRAeh4=;
	h=To:Subject:From:Date:From;
	b=nwTV/8rZsqg14boB2/k1AVdGl4QAAddaVe1YOtA/7/ZAyc1L4+YsFiJLZovBCA0kl
	 1m1ylt3ULiPFROZBYaDvEl3WS3FDNtE4YdV5uPpWE9mrbZFsgrqU3KlH0yCGqdTINp
	 nv+V5pRI2GsUukIqvaDNeRD2d7M/QCmBhzKrZgsa35jvTcsY9hDyOfF9Bk4lTPx4bM
	 Il9fEmbk+ugKa8zv3ZIGNkp7ok4XA3QWFuHt1pgWFa8ijRzMoJjzRwa0ecfLmRabaf
	 z6pBCHyR2pbxaYS7SqoJ+OzHdno6Btxa0c9qQ0j3Jwd437DOlLQ5qVXRsp+IT+XC/y
	 Y0LPAdvDsYTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B34BC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430645336.4988.13205970238707877857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e0d9c437bbad5b9ab5b459f4eddfb3438cdc6bbda6c91298d821128e5e3f69
Date: Tue, 27 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664306453
