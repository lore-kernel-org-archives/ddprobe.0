Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6768C4C6D
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5C1C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694175848;
	bh=EqtW0N42wna4dWZoJge4LGKidOgDh0nxkJwj3AY7110=;
	h=To:Subject:From:Date:From;
	b=T9ggwd40uqY/gf0sTkqJYGkoRJTMqVTXFjKAALW2aoLqVPyoKcFfoy+OmW+pguDRl
	 SzLAdz0qTClaRc9NL13+3lSYQroM6/BUL++9FpcyHhlo0tmxCWPlUKwjZITJU8MOC1
	 FONNaJkAmpbfGFE3glm+NVudMI4mGbuhb5P5chAGfjLfuWHy3gPVdc6feOqof+ec41
	 tiSRDRTYK586osxdAo5JTVLRnK/EEVVHMHgVVF8MjrjD/iE0jD1aRp/NlScOBHNjAs
	 lrTBj3OKS3BKN8pxcpcnUNwjw3A5ICnMLVTwKoh30DnZ+aZI9hNlJpQtjm+b6AY69k
	 hL4LI//E8X7eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEE6EE7FE1
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169417584870.25710.793891214278121049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f19d77e344307e3edd728085df65599ab9177b0d7debf6112e16b5bece39d5
Date: Fri, 08 Sep 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694175848
