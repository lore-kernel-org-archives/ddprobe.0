Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C928F74
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5E7C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688653628;
	bh=Mj38qVF4ojCoqNDNfYNJVEuEjXJgclOPsCfkvwWpfdM=;
	h=To:Subject:From:Date:From;
	b=JMQCYSbUE6s4EtKko2jzUwfz8sfvpp/VwTpR+bQP03RDXUPaMb5JYz1eYhhYpP4zq
	 zzqAH7paUEbUokxPLkKjxqOL52SOwo1Sx0auv0PVeOf196JU2pvanT61pe/ONki0X7
	 AAxGVJznlcpW7xuLHEKgmehD50D78dqoDX/tVrWoRar2zT6DUCffIfCgmSELEqDMVV
	 0fGO0X2yHxr/h+ReyexPe4iUYZR12jAX5kUklKqMh3WDsOygBRvBhntQnU2FYMUysl
	 n+Q/0aHgHLz7tTAlGWnkEp4vj6yPQeMEg81ceN1NNhsKPGP4v67AhgTRJfnd7SQ6mb
	 pmVAfwtgZLXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB3AEB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 14:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168865362870.23571.13695237025539877468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10e336ec12784dc9a90bab22de04948b8e1d88d9ba2e518cc5bb32b8772e52e
Date: Thu, 06 Jul 2023 14:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688653628
