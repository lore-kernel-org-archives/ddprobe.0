Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8FF7F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72709C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666072853;
	bh=haG1QpN8CzPx9K+rA9jiOOyM5LqzNsVaTBDYpY9RsXI=;
	h=To:Subject:From:Date:From;
	b=JkIB3iB2Kd/nU27ps4/wcX/AEX7M5dJ9oFcsb7XuITLUud8LHSnl2MelRg+/nar0z
	 y2xUy6jbQMul9uN929+1LRPVGXhtYQJfc3LuHN1k9ImRSIZxEDnRV3bEZRzMAE25uw
	 L1RgCxwZtgGT11XJz3juSCMvlnobEgqQ8xvmHile64AI67H9pCP7cR6qYM+eu8cuPN
	 f+mMgwBNZqvZvLa45xVuO1yr3bKE3cdkDETp++GGIXrbzrvQ86uUGzwvy9fxcJLAzP
	 x8YLlRanTvrQIQZ2gQNHij0UTivJ73drCtKTMlB5Y/V8J/j/l0yltCOKnkbHpEtJPw
	 m/AUkkBE9f26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C0AC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607285333.9897.16062472837061546565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce35abc77a9e20f05f3c2e2239da68f344ec4c88d987db520aafef269b3ebb0
Date: Tue, 18 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666072853
