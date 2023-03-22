Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F8E2584
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31C2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679519945;
	bh=Su7se9niE/ZKXF3V/nyMm2OLm17NgqfQXKPeOdo9t/0=;
	h=To:Subject:From:Date:From;
	b=Z0PJS7QhLYyEJCNGoQu0sfVplYJ/bLiJSdldyPmoJz1fOmSyTBab+J+ykCyu0WzT4
	 9LtO0UJ5GL0ueCs4/bHbiJtdhZoaxn0bzTpe7ekeGcYahvzN4mRMqbAfO/aVD83SjC
	 i83QT4sOGbtoB3fPalkUW59p6a2JOePuIcPyevq4sgGVgvw0UKPUYbI7EPhEMrPxmY
	 HoKrXSzndLXAdA9L4DBz9A/8aV5I2+gMNpGO+BaMORJQFrvBJGEH3duszXkCx9qhBZ
	 j5jBs7admLJiOzKRcwKFAXy49RvLbhL5A/Qp0qs0t/hcYtkBFzwHONA7p1N87K5Jmb
	 l/x0SVBGAX4RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B2CC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951994574.6724.3856623760179461461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9222f156087292aef0c86fe2f64877fa0ec1fdf91e7cd55264054e4fd0db33
Date: Wed, 22 Mar 2023 21:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679519945
