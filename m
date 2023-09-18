Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F36715C9
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3299C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695006308;
	bh=K7Um6cp3Mb2yRSg/nQtzYtftLXweSfwIVSWB9ny87iM=;
	h=To:Subject:From:Date:From;
	b=jxLUs/GWesgJv6NRld0mtiWPKtUEL0+A5LLeOB+SDWdMJbR9JJBqc/elgY5rZWy6t
	 iPC+RqJE1jlYVDx7ItI74JeJDYzdWvo2Qb4ZeMgF8yzTyFxISBKMnWYm1aopYjacr3
	 4LwszOwCNHJ2aUJCTZk897XV3NPqmIdUfxhjAYfkRZW3u1DD8+gm1ZBANWqssSPiy/
	 F67KocKCuoggHrEAOGC7n9mIGieJl6HmVB4dAfQHyh5kygxQKAg/KayWoMAWMVLy2g
	 2NzoQx/m3zimjTOIQh8sb4TaRzSNXYH1VbhwVHcH9xxB8ATGvY5bbUjQu/XBA8MrYr
	 GWpS/kLXCv50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A639ACD13CF
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169500630867.13935.4772624571028764780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a20e5249c5774fe20b270f0675c4ce7182ccda2a27770829dbd7645489478c6
Date: Mon, 18 Sep 2023 03:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695006308
