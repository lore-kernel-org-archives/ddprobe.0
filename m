Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D877C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F52FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661619052;
	bh=hpGGjZY3220IM1thSIFUda18PBBOiqItVlQl4JE27mI=;
	h=To:Subject:From:Date:From;
	b=sKkSiXn90EfPdR9HIpaej97O5PtkRg7I3eRfL9Qp5PYoum36mt8XleP4Iq+HxmT9o
	 nbbxfyTTIT18+zSV1ZChxndy0e3AFoSC4G1GIzxKE/ghTs6GqRjupxNsgSE4iCNyte
	 u/9nYxuSmAIcfrEWMALr7jTZgij+/32mwwQh7RTTERdyGzXQ4dMnYkOUj7bLr3FHCB
	 Wp5irc7mOqUV8oeoishGv99WdnfhKhMjtOCFKDhPzhs4KV7nPeGsd/cV/RsKeKYUzk
	 S3X2un1kjrMUWsoaKanixhz5MeOWDVyAvrjdwl4Rs9/Rs+riUZU7LmAX579yawBEj1
	 5m4ChJiga5r4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53385C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161905233.19817.11022928803563605983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d13a64f27bd4c22c2b11ad1d900354df1ea65f441a61a0561f310b556f1eef3
Date: Sat, 27 Aug 2022 16:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661619052
