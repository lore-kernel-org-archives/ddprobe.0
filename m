Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE61A933
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 21:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF5EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694554448;
	bh=r72ZB8M4UQF4gX/kKg/rjTQrtfAesC8cHeWp1/PHPV8=;
	h=To:Subject:From:Date:From;
	b=K6vnh0H8g+cYU13YE9hjMa9NMJeVvOobrtQifruIqZoID/fHcvUlwrHYEREq3Rhqx
	 P/c59/PYmkT4yMG7FI6FINsoszUaIjNHLhufH83LbvK/8S2GoW6hVbIAX/d0yjHRcr
	 F4pMQEKZe2zfsHiidiikM8kTLxHnOqtt7oh0FWuQ3GWx2JvJHrhU+4/SrsEqy8THlQ
	 G3NHD0fccKSB8ZGwPaamZF2/arfEyx7dj/AAvHdrAbnNGR7jy0NU3w6UG23y6Kd2ph
	 XyZbzsiLLNH1X4oqTGkyz5KTdi6Monb+plZoKErIms7OgBlskL8wFAGmpk7XBEb8Q2
	 r3VkUyvfdUyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3DDEE3F37
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169455444869.29233.18308357288952410367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16979daca0ae4b30c44405792e09ef2caa2e64559bdd1336a3895774c5be09ed
Date: Tue, 12 Sep 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694554448
