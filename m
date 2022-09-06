Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6112F2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71702C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662456653;
	bh=CA7DwHOE0ZzVCUyubJ7sNebBIqndcHdLmS1qSnoGJCQ=;
	h=To:Subject:From:Date:From;
	b=HKfcRlz9gV2ByP/Q8arum7eFfvUTZjMCSlwzAoDtx7LYLxvEZwSUY36iXxe2BwP73
	 5SyLOEBT802VKtT6fqXUeYc8R58mvSd4kQNkZ6PQmagelsIoDvbcL1FonJgdUVa1Kv
	 2CbfKe4WrEO5I5ptX/inE3wTYDLuAJl4hUPBc3vJTR3KNmBpd1Wwmnia1R4omHk7vx
	 uoAZp6udwk1Uapt9Cg28hUIqYGDPCpeiKsZH7IkUXs2Lve+XppZGAy/VWkn378kL5P
	 MtK9Dhlvjx4dPQKi5NJ2WO/Kzx38HGN99/aidQQa7/QqWBDrv7OabVc2lqgzLLSlrb
	 Z7UHlZ0UL0Kfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55740C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245665333.27397.14715159560820316340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce5a5b783063568d5c16ff2b75fffdfde1690cd5dd686bb21e162a5907b90bc
Date: Tue, 06 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662456653
