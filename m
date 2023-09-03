Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679A93D6A
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B2C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693784048;
	bh=WAL/igISj1y+um3NjjJw9nhF2xx9FM0rfWL8NjxBTko=;
	h=To:Subject:From:Date:From;
	b=b0375ftu4kUk4ZUXrwd+wh/t9L92puc/13se46kIA4sg0nV34rVQTqiJNqPMeraeH
	 R2qGvSA4ZNZJNvBx+c6tPifZlAhmciuUNZHH708jd26mglDkVqq8IimwZpDPG+JzWz
	 NKiompSl5A1S7/jKApTlrB9gcn5LbjVmPWE3qfFFKYOFrkZTBoAV66IkIx9Meix861
	 RTqlTOR58gNZgPfgIfjHfSbiRbf9OWnxR2gAsnFto/N8jXOHkRRnYv2qn7GhAJPsYC
	 wlUNJzIuAdIDVIf1wK+fdJTA9ZKb+7mnyiNtxjqw5KCASPzVzPkSq59wzY1RS6BNdT
	 JpFfyZDDDguOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C5C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169378404866.9229.1772301973115512410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f60cbc7f9e7680d14454521a9f9e1c10d1eb043559f22f7a0c183e3303114
Date: Sun, 03 Sep 2023 23:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693784048
