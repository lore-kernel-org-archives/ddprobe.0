Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF4C3C6AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B32C433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696362968;
	bh=vSJ2F9q6vD/M7iNmf5kvBYOTuEcUtgTN7GCZ32GGkhE=;
	h=To:Subject:From:Date:From;
	b=JwmO/FsWbBLsiXhLM62h343DMIp1jA+Cw7RrqVLO+ha767DwXE6eacvSL2ZCXmGbk
	 fa6QOb5rju9eCHvYQ9WivKDLRrp9V6Sj8lCGRFBSi84YZCuGch1itRKaKfNh1Jnqgm
	 iyjbl7ObersV1lqGfXiGlMjhivH8flUu9PxQu3tf5R2bz7Vq0JLx4pWZF5cTbI/XTc
	 HP+VdJpnOiLsZHkT+fsben0+VELV+oR/c2mq5yxdeh+x45o/y+Dj/KigQdm1s2EY1V
	 FzDhh4ZhPHr7CQ0FWfqo+VpdyAjB8TN7pmZH6juGz9CyWYyQgzwbGYjTbzkKW4IBK9
	 PvC5WI6AzGB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA954E8FDAF
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169636296869.16417.6541774062747622556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526e4c351a65c3bdba207748b858badf68de1ab962c90622b29d8e1a2deae840
Date: Tue, 03 Oct 2023 19:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696362968
