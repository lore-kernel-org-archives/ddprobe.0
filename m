Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA9D2102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F652C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670422254;
	bh=Gzvuw6FSyDdn6GUfH3DnucC49824CeIZTO/egn+sXCw=;
	h=To:Subject:From:Date:From;
	b=ctGBjf5pLxbvVFRAeLDXn/uHMGOiE4aI+TmQEsW7hObNMztlsitO5v3VSA8OkNP7O
	 sH+S+kKWmnQgA2y3H8xCyR2yk50fA71HJVN6hTRG5NyJ28tRnsK2rq2clITxYaDeHz
	 PIm2v3Q+d+xQqWKn8sX3WR2+qmFVOZOs4zwjKP/SeB0D+rP95oO8ha20Sp9BdkHwxm
	 u6eekTuQRyVs7WoIUrSvGGqY5k3jLNtfkcy4dXov+IwWQGIhLW3RcLbWskVxW5yOIZ
	 Yof2uRpZiy1S/rXsbpO1JkPLuxkaCGOzv79X8SALUCjw/QyXucthk3Axw4WdC7eD+8
	 K1RXsJCthNc8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57455C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042225434.1718.11054244528440885691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d63119b8ff3a3ef644d8a3b02e2165c52e86cc538069d6bba11226e6422d78
Date: Wed, 07 Dec 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670422254
