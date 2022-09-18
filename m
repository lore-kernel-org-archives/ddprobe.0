Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C0A7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A74C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663519853;
	bh=Rj5AAhrPQLKd4rChmjTOzOqug12w+1+2VqxY2dzgwZc=;
	h=To:Subject:From:Date:From;
	b=PfdR8eZVD8Sa/87bbyOqrAx/E3SjhFpHy78GL7HWJwRUefvR8gNsTE00KwDP9R2AH
	 YcaQWkBLRtKaV3/Wal+eLvwICkrK+24Otu2aGdEOvJysVVIgnQlVsJDGIyjHD+HLTG
	 5ezhPP4xp7wlZH9RX+qG9MQzP8ex+PxxY4piFF1zS5WCGW7vXwmXsQoJAMFkpvkP5D
	 9wEt6e4dcyKo7BfPUXL21togPagxJEI7G6EpwHUwq8ZiLYgxMGTXsVOIUyczip/wBz
	 x+/zwK3AUv2B0Rvjux8SDCoDMvWyPM6FLeWXi9aCN2M1PlBOiJrXkRUtMuKICHMs2x
	 t49BrQ9AmNolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594F8ECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351985335.29245.15321188053164103866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90b55a15ec5721e9be2cc5d45d6495b1693ec18961b07879b80529723252d92
Date: Sun, 18 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663519853
