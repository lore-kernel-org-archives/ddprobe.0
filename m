Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB962620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF29C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661909453;
	bh=fTLmI4dE10Q/eDP2tnfVUy4PLdc1ivxgNsGmblcCLeQ=;
	h=To:Subject:From:Date:From;
	b=AMWAe6JcyuBEPZdcA+NNyxfDCZqWosgUjI2pWx48SK1heY0RHnk8fJ+d/bA4c7YFN
	 /XBYYLbRPPiNOlfy9VO5NXvZQE7eVLsf15lBFbqv3kkU7/TAGQ0rpHFjwHPielpws7
	 LyhCN/X1Cgx3KJMY/3eRwW0ImbX40MLIveSyK1qX5oYcOwFCsrk8M3nmSxRzidXVZa
	 Rnz1kv72XeVZkP5K61JYCLNYEYk1mEU8XkZ6g0ahGgbw+oZD8abYmgEaTg+vbWsQjn
	 Su5pfaoMJH/UsqsI1QN1RV7q+YjWNuxa8I/Y1nrYyq53sbEzl8D2fHRxaJCZhiZ6/2
	 6L0kqbHbtY7Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC0ECAAD5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190945333.17227.8690617706543116833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70370785521836bddb342adf0f7bac930c1b4bce4e40407f5edaf46433f0b8fa
Date: Wed, 31 Aug 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661909453
