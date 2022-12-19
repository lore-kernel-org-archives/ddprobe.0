Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BCB63D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A462CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671469287;
	bh=9Yw5ILunz7C1B9f20oK5iJt11TBUAh0vFp0EUFe2ewI=;
	h=To:Subject:From:Date:From;
	b=pkn2q8hl9hB6F2ce57jxbh137923L+BIIE5aftCepwlDZONjlAG7QYNnnHWObqsWc
	 DQ3AVVVD7Qzc8tijteJF9vmLYahl1rmvw/oY9Je7dGfHNbJULDqP1ImRQdI8VMzUid
	 LD3G4BiNkQgTbb9+EgXc3cMo93HqKWTOOtWq+tWNoeyTyXCDCiCwLbcnBmyYrFutY6
	 ip4vL/aSwbGUN7FPR2aGI+CwE1iDESgjer8x4YKWw+cNU/7frAfDPkIegDMtIw68sU
	 GJRAAnIMfqED5M02JcZpS+bfYL2PtoRuHionpdMB7O5Or2hrt3bSVKeeLHv08FEWX4
	 0WfCdsSxspCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 883DCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146928754.12874.1268872246605338988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae681f64635061a7cb78b49fd4a24d18b1e5c86277a2f1882be384ffd5b01027
Date: Mon, 19 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671469287
