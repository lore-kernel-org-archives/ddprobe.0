Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA75C7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7A0C43470
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664737253;
	bh=/yTyhDumtGa+5ScL+0+26PVZIMSYAljpvml8Y9ocX0s=;
	h=To:Subject:From:Date:From;
	b=ncC9GDEqHIYEEpaFALPv/sWkUqhZEyBydplmytV53tgOmNL046Md9jmj87HNm1yqa
	 evxh7He1QS5QQoUIVvAhqj3DrVD1E87fg4xUXp1uahbPiNNEgN8Ey3kHgj04Cdw/sR
	 T/hcfZxhhEPcKpCwgTS6n585pZnXN9Qkdw0hnwb5X6ZK5v83IRiKnawlby9RLqjHQq
	 10Bssd6XGt0AycKddgtkQu3d30GnODmZwtzzuzggutxZPfHivdian4JMaWbga3C4fS
	 XAKvYPTColheR3wn5rhCwS8E//mpTJRyNW/YlFRur/67PB6aHuCcV2OrZP9NarzT1p
	 0EStys7OQgKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5700DC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473725333.32155.11497598762123345449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a2b61e1e90cd891a306f8ab9cdfbbb5828ef825918961f0033ff1a7a68d400
Date: Sun, 02 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664737253
