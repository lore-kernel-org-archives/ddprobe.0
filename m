Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0EF632
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8743AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672132287;
	bh=8+hwuWxN4CvpxMVmeQ9L7IP3Br6jJJzmJ7mv1ZGNHsk=;
	h=To:Subject:From:Date:From;
	b=KXksl8euxurJ1gvivLEaMJW7veJqlCQwyFJKEcfN3fk6iEpy0jbBRrs0uPxXqFKmr
	 hs9lSzmo9v3iJOYg5Euzzoyfe/5VQgpEJAVf/dHbrGrSQFjJ+OwNQFx4NO9RdaUEtu
	 ZZVjxhMwW1Tft6Gh8SnGWsv9OWeLd3BGQ+fcux60jjtGmsXR5zj7h9/PVo40ZOLiUa
	 YG4Fpilp+pDg1+9IM9KfaAbDCGwVcUbDTrtaFXfkWImzj1J3iBN2aI6mB6lvooGWK3
	 2jmjiSnhZ5r34xTIUYJ/DkWO1wo8AvsNipdemdkPfnTJKzkScXPONGEVjuzP2/0zYh
	 dc5DA2omPY5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E8CCC10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213228744.15316.714785836952490615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4045cb2d239bfc46d082ea9781ba1455f00dfbfe8cb23aa9ef5b08be29e1f8fe
Date: Tue, 27 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672132287
