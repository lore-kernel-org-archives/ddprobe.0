Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C611D4403
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E550C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663177253;
	bh=HITgZOmDuYoejrqfbKZgYmafmhjD9jj93wqZ28+poIw=;
	h=To:Subject:From:Date:From;
	b=iS7wGShtbP6T0nEDICEcBKBuQ2/awwQkEmkcH4vnmMylnJg8tZitK3sSg3DW7vnAw
	 B1iUbf8CfGowZDw30YyPnb1ffwNLHnQ72/mn6F9HAl1NxRUdQqFVk0l5zrQJ8Ub9/P
	 S5oIdzgUA8wVC3wemSgE74c3HD6KnbcKbcRQoEKIE/1Hj7d1MKcAfIZhJZFB4G7Y/5
	 /jMqDRZBpE9G5Iazd89vcniTsGO3Y3Th0drs9LCEoEIt4+29XA9tzjrwQKq3it7vKz
	 l9G3KVnKea33pUI1Be+eDsz4r5M3o/c7//YVJcLNRiVSucP0v4z+Rcy+4arvrMO1qT
	 NOAmlqmQET+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F87ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317725334.28517.4787438464277116135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07548c874b5eab02600e345f59ed7f8b1222aecce84b666620573c4218d59b43
Date: Wed, 14 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663177253
