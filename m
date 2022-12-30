Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD151C28
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827D7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672413687;
	bh=23KQ9htrAB8LUHKXMQvJ0+DIeo6t6SisjMQLjOvPkYI=;
	h=To:Subject:From:Date:From;
	b=O3K6R/6uiQgx+jYax21RXrrtexl8e7HzfvGbxKlihx9n3oicFpMbTNInLtgsLhEz/
	 SOij9qeDVmWafTvLJTXzC1k49DMaOygVE0W4zGP+xRmZbz3QOYkKS9EDa7AnWd3V2a
	 pC4Wp6gfcq5NyS7ZuAPd416wxiow1VI6ogxNEpNTVq5BTVmipnu6lcWqW96GwTZKZn
	 MkXTTBb6hpyr89ypL4zVwK+p/f8YzZX6ZT+OX18mtX0x6+TyfBlt9f0XiImuUWXRAC
	 tWQroXpkKgO0mxe5OqGBymw1HZ8n46FSVVmwxCCTysOUau7SA7eqetQcwv5a24g7Hy
	 8hI88z06+BGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654B1C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241368740.14305.1878029661917718331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d633f15607ba659c620e67a8568b468a2aeb6ad8b84700f6dbac992638c4cda
Date: Fri, 30 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672413687
