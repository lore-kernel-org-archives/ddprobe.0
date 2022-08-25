Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C062C1FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF8CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661410252;
	bh=1ApQBAjuLnaeW8TN1piw06r6pbt+5ypRf1UzIuWZSC8=;
	h=To:Subject:From:Date:From;
	b=KyRAlPEswTemk43vs4ZjJHVsTBFkPAGgnm86/7WIEDpmv6aHeB7M6j0S4G50QlYdF
	 lFW1KXhVV6k3STFS8YRKDyyDmrZUOlqA9tkbNo9WJ5R79Le4v5RwQyOSImstmxDle/
	 I5Y7EIgpqFT/FnatlOtvK9GinW0pJJEwl5FPD9zUXecu3z1M3HMEs3eWqcnWNnedEt
	 JULMriw2AhJOHIttmesJiEewuWdLcQe2cQPX6ELpm3Y2LodzEdncTxrcVHBuDwhe0U
	 Y2nlwXBN371y6Eh9AXHcJE1DaFparKkpBidC8MA2ZZOyLwZ/PzIdBnr7Yzsv46SSMY
	 h23M2nJePViOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549D1C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141025233.22224.2137163625299437732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a661aa39a074b8c87291c498dc661223bded424197439933c28321a3d9005b7a
Date: Thu, 25 Aug 2022 06:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661410252
