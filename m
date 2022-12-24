Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E4180
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97EA7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671856287;
	bh=69z3QdrFWbbGCMWM1rK46dwB1ZJdelW4R+Nw6we27ig=;
	h=To:Subject:From:Date:From;
	b=RXosHJhLPA8PT9fo99VlpK6A6m9IL0mnH1HOMN2+XvobeL4mf5mYCb5Dm6gcuenIO
	 SVFlOFNhQYl0IFBHOq8ZRck16X813PiKgdL1sRJ0D/dYqX2pS/zDxsBq/SlN8jY6TC
	 AWR3fSjd92bJtNZddSllFKgDXQqVKADK8WJMeyjK+8r5/u0bJ/kTbiAu8Hghp5Brl9
	 4btr7tIcT3sUL9QwYOQEUQT1NRo7hC+CDtfTFaVh3LdtFlithuNgstOLmkt4iHvogO
	 awBbsIzP8AGYs5AuC42k33FkBKRlcnRmpFxvkyossBFa849sjxwcxne6g71K9uL1Hq
	 kUXVjrK5ck6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD52C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185628742.32462.2821844155987649619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e100ba1b7adcf8fa84bd3586a242794a913de7ff8f0b47b6f7915efc9328b3a
Date: Sat, 24 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671856287
