Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47884946E
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F4DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683894905;
	bh=AhsO2dsePjM154ZCgCASPq+iJ+BuG0uFkS08mOYJJrY=;
	h=To:Subject:From:Date:From;
	b=GTvX4vi22x2bcZ401fEFBeI/2yFYCspeDCaPAfvPT3o7qkNpgI+SdtGiLQ0mfHwVp
	 5AziJW2bl9dNft0n8hqlJOBuysXZosvkaE7enm35uf9u9hzgKWGEyRuemZ5XKrUg60
	 JZqN6ssgejsIDqx7aFc+RsD+v1GhUu4SUOMP+KBht0o2QDwUoGJF9x/1lCyENNETh1
	 rjuiYAPQGqj+YzRiHPY4Vlfh0wHifG6tiP445hi1XHzfp2YxWSk378JignUbJWTZ6t
	 bM42Tg38NHdqzwB2Ib2r89MT92UBgD7Xak7smQDHTrSkr11QHcROoycZ5sSQ5gPDrK
	 qE8KBKbrRql9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CC8C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389490578.7315.14079497544575290855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76bef87cbca3e3935c452fb16b1a7ffddde0e75ba140fe676a09edb928c028d
Date: Fri, 12 May 2023 12:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683894905
