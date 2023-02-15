Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4056817EE
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB707C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 05:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676437625;
	bh=rL8cHIl+LVfk9Mh2Iygd/t035oYtRH8eExLs6ZJoR84=;
	h=To:Subject:From:Date:From;
	b=GKsu7bHnjaSNedcA4mFB9VkQlb02NehQzpMmRc5aX3t7tZwcPz56wZa1tg4Os+5Lw
	 qq3zoHmDA1CF+SVU7HWwR6HphC++Bop7GoO/7Dcny0ywDuwhBePXka05kw0dQkEgJ/
	 r/Gi8DjPk14HgdGx981jVv/7L6yDuoT55C6iQml3qBGYapXJKd/WIjcko3yZADck6Q
	 SKfKS7+5o76RwbGms+Rh/ytBolIWWbuA9jtKPHyZzmzsE4eXMXhZvSl0StOh335TwO
	 ZQcyVrz7H3WMZgA63oNC9oRwJmypfafyXrrUl4A8mw1scvv4nBWZnrVSKzJ4D7hVIj
	 l2Uu4RKKaRMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E88C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167643762574.3281.11905158704309451405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38b7c27653aad12791439037bfcdd87f0211a647d57df2c5db223b71f38a3ee
Date: Wed, 15 Feb 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676437625
