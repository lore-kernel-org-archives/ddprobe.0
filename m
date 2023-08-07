Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C961392
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FDFC433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691371388;
	bh=DsNRU6oSDxvPoh3mbbM2OCHoxWQVBm+FayjExRpt9hg=;
	h=To:Subject:From:Date:From;
	b=ChdWeDoA44AaxYtlngRzSbgBICMyhnBeSKEKsywZXvZJ+CzClGMp+sHXxHPprn9Sh
	 9el5EnBqnjLvfSh+CEWuSdWaM76Bkobq+lwkdIULFCy4l2+naYqxjMDZC7eeQFoyKN
	 vemBOxC64b9nADtyVZc8PjzYlMCLOnxF8CcP4EfJDDbfahwFY8n2/h9sy3gUkwFwig
	 rJVWsFceKqP/wJofWOncN/HUklQFuflhKJuFmiFxOmy7BfvA0IQG9JY4iteAvvdhIJ
	 H2LgEcfRTcdHGimrhdpnjv89bwSJOMYSY2jK8rWIojRvd9Zt8JMsB7WIhjs2mIOHuc
	 biE3erG604+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3642C0015E
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169137138870.17816.1120196128502574236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908636c1e24f449e8d99cc82ae5e1e4a024fd394430a6c3106433da886210566
Date: Mon, 07 Aug 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691371388
