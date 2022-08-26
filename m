Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14E6185F
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779AFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661481052;
	bh=gZ6sn0cb8i0BexOgFpgWywgZl0PD19QE+5kPH9JjAhQ=;
	h=To:Subject:From:Date:From;
	b=afGC6VVJZwKCoIdg8D4p3s+l6LnERnS/cxLzKWOc/9iCPVI761TLigxzE7Re+i267
	 7F0D2jsYLgW8IF5OFYV77COjfb+W6m3V51f7ck+M+l/x/QD7KgiNoBukaEhQFsgzZ4
	 iBYQ9AuRMCcd01LGy0JOl9fIsedqa1B91z64iTZlCW2HHWhyymlw4Fm2oe1Qb0DHJf
	 312hSTOrWMOYJJQUj87yS5Is+a9YINeSqrFtTAQMk47JISKwaXZIEmBHISDD6gcRSN
	 Pzps4JGzHfg0mE4hTmjHfw5Qr0crHgjp3Jc8YSDfWFJ4hJptGbQq+EkRM3HYA54NP8
	 C32rkNd9K4Egw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE2CECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148105237.8370.12939873889915108852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0fe688e62db09c22e1285a38677f3699ad2c3c9c6cb1c46812ea05d770f49a
Date: Fri, 26 Aug 2022 02:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661481052
