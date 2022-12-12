Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DC01FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80959C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670836887;
	bh=tVw1Frne10sYXoG40OosWzE8mtfXOu8RYRwF+5T0jFw=;
	h=To:Subject:From:Date:From;
	b=eOfzmE/0zNezuWzeMn2N1wv1Ou7sn204SNzVFq0yD7gs7bqWWJ2uLo89lrw39t/vo
	 e2OrIUQdoo1w4YSWbY/B3llOn7QE8irMdjloMiEfOecGjx53cNU9VL05HpVyHmLg2k
	 YKKGz68hANVS8b4MHlL0tiw0zKpuL/KBVZ/TmVJTTBc+RPmy7UAkMfw6ytMx9owM6w
	 H+SBqLTZ05irJFwa1mBduG9zElaNxbZK7xBXW6itJYs+P5nLTviBSji3LiACnDixjE
	 v/9fhgZeCMERpahXM6hhnxeTE53zdIxTtCyKUeqyPDeBdSqjV+LDWTYRVtcNiRG4Cp
	 uZb1Be2PeZBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69384C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083688742.23328.8065066185149422720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d7f03f023e3b6e9c919a3ebf2729c3b521371f3df186c32862950ad8f91377
Date: Mon, 12 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670836887
