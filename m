Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C7133E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75952C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661515252;
	bh=KuDNjelLjScGUL8DVSHqsRw+gUF5NRs6hu4YKYcUKZc=;
	h=To:Subject:From:Date:From;
	b=jpPs/t2t6SOUhc3FbohlIU1FGjOCrtbvrI1qYkek6ccAd58eiCfIvVhtCZokOOMK6
	 RgdII4YF7jEM5EmVEwpjVeG40VCoGSSmQIrlvV4RS/pNYZGFRSM2Bb78p2TH+NOP/a
	 H4Gk78y/KuZX867ZsduPOnb/y37gY45OqRv76ebe4h19OK50WCPKzVnBofKXBjLRoy
	 Gq5zOvZkYos1d8y4FzE5KfFLxY8QWmZxSoTVaaQ10ZMw0uYmWyvNkxO1tG7eij6Sa5
	 YEKHnlbgnm/f6/8+l0oJHM3Dmg/3xzOURBJIiCVPLOdwtjqx28C89YkzzCY4hYAvNJ
	 qGHlmSBdXNQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABA9ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151525236.5419.10234721874009387025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae323f74fda64a72b8ebdbf3e82fc401346aa12ca729c1771dbcef72884de462
Date: Fri, 26 Aug 2022 12:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661515252
