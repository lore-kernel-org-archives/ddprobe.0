Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24187E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F094C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669173654;
	bh=35jwQHzIYg45U3Y503xatubSWgmKeOryRwYPoPyohqM=;
	h=To:Subject:From:Date:From;
	b=BtTx2GU57G2NAaEreXhqcaKkzWjQXP9cVDMAiDKN+Bmk5jWCdLwOOdXZVWnIjhQBU
	 7rE8D8H3AHkNUASjazTvtm/wH6yMOG/lHpFBx3J6Ts8No/s2RwPTyhnIyOSJDL+URC
	 DZU/VOCnnupoauKbt0zCOSafV9zFxMBQO7dCylJuXUW5K1gWt8f6zdf1jxle+iUKdI
	 Dj/5C5rdv8ftZnD1r3I/VgDnVZJz3k3vvqRKlq/WIFp1jjBicwPTcu7PcgtEIYFvb3
	 K9kKrHaX45YAj0llmHQf/FEYd+ySG3kejBwlfYaRnq5DdHSNjvRqXqOAmvMxBHtsKv
	 P6IfXlQ/v2+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D76CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917365437.28871.15518135826271544114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba0bcef9c7967d5cdd22156ce19ee4ebaa39c4a6a5981bdd00c8f1028e9fd97
Date: Wed, 23 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669173654
