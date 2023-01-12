Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E6C8F6F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A541C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673567487;
	bh=eFW5Uabooa09Rb/KY+zrqwe40OZnsga8GNxjKc8bghM=;
	h=To:Subject:From:Date:From;
	b=Tc7BAXzphYtDafFHbZCa5+Kloc6KGbulMpR2043Pn66kLXEmIlfBdpMX75+YUUbPh
	 kEAKWeQTBBJp2F0sSR76H6HGon1UcFyMru9ytBBStDdYMO6/L3QsfBuA7+kDnOZMCy
	 9Q4sMKt5ecVpkI0tZv4sluxMc8xw625GjR5FYVxeyr4kMEBbImNiUBg6ylopwQlhy/
	 qKvn8uz9GrzwAUnD44d+X6kh69b2DSOavj+LJX4e0GfHPRloX3PEAbpsSKy1/NyGGJ
	 mduABo7mKP1Uiq6M9FFkt7sDFSepqxgBLlxvX+CeVAn4TybHM7aJ9dN1oImyLF9RKo
	 NBj7MMpxRmZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC6FC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356748742.8911.4885468788975798062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee745fceb6163e8ccec4f2071ad1849363aa9d703dd187ac6558921b10111a26
Date: Thu, 12 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673567487
