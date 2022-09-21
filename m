Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B852F57
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77756C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663777853;
	bh=Mf0lp+YmpQl+clz7q40Co6E4eOJeI3O/bMUSMaB7Lq0=;
	h=To:Subject:From:Date:From;
	b=csi+QA7CMUrkLbofGH6kC7AATe3piHWMktcGJCdvS4eqsfihWYFuE0xM6ddIvUrXN
	 e7s2YuTDrQEuu3/E7nAgoKrd20E2phA7VlSvZUYY2vfsmWtETIpEXYAIdzH30gxDAX
	 IYlUGYO7QxIDRTveedyyFyM2n3eXbrBeKikaPQWAgGzxpl80dNE6yMTn9t5AIGNpKB
	 BBqZH5MMf3abm6G/O9HAQ6AbMOZxflsoUPI/uU7yUTL/Zrib2LP1UzuVToopZabhDu
	 bA4tyr8XsrfzCxDw1aR1zWk6QUAFVeZSfVrw04apHH27RCfaIMpRvvLEdT6+nSYjMh
	 ccnFi2xqAUX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E74C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377785335.17449.13396802949942019240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda4dcdd7a9abef0eadf5aee1a75b0f49e68dd31d52ed927ec93a426a194ea5a
Date: Wed, 21 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663777853
