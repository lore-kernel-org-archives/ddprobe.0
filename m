Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD8E747E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71639C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670086854;
	bh=gQ6IvkdNAO8hxMFvgda6tij+jnUjUtGOHKuoemEp0xo=;
	h=To:Subject:From:Date:From;
	b=kt4cn2oYc0afahPxIX1BmjZ7KzF/yT1XnNEUPBk0XKuHI/d5sMVTugRimBvuG0Lxg
	 H56ykZU5LC0MkZs+pyYoEhKAnPTwGA/0xWPEGSwAJeJfOr4QriAK8gxqOGCUdEKohA
	 O6Ifg+Utz/OI9oivLW5s3soqdk7wkp1cwJzrHbBPxPPhcJACFEUwCWYdyuv9kzl9eu
	 sSV8kDPn+mr3PFpL1JsA5gl9iVPbeeEk4TKTaPvAlcqnSa2+X43bu2E0/Zmd/cRKgw
	 D8uwC4LNGg5NqQs0DcbSwEeREtm/uI9k3yYMkcooGQYnPa28uZIKIb8kYO0qjuSNAC
	 NVFYrK3ATd90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F67C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008685432.22190.8562044696100906959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37eb6fb3bae87a69b9dd9d79af4905ba9f36e099031678c40a7cc9b787fd6b8c
Date: Sat, 03 Dec 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670086854
