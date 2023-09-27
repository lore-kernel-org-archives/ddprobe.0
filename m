Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507466AA4
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 08:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FD4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 08:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695802508;
	bh=CHIpztLZOV7Fl/V0wCOWzXNapsUeiH/XpGJE9ooR+us=;
	h=To:Subject:From:Date:From;
	b=ZLvkHkp1EwI/mPAVCptW5O1vMSQP3nKZ8oKHNmFbLrtecCfRX/P2ieGxVbcH+K5nV
	 b0r22Po6ZFvgv6MQRztHOY6vlc/4SQLN0D5nvSmgjrsr8G1f0uxO4y8klFNeqUoef2
	 JJ21vQtpB9LP9gj8Y0Lq1Gvh4XYU3+phERXv4nGomz/MICskEthqSYcq+QKGSqlpZ9
	 V+zOgS4XzZ9YJqZD5xrmsgFpRJcCBsSm3yevEOofIL/hAQ8RBe44NQdXClIbGeaA9J
	 NNWGv9TzT/mqu1eskSY7FvLJuwdX36bJipdZ74p7L23fFL7cuL5Z7WKxij+WsMKu6m
	 Oz26JvWybl86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F8AE810A3
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 08:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169580250866.2634.12898872223126556891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624d125b9584149e27a0a81ba1d2089c0d8a66f59e13065bbe3c44d51f90fbf4
Date: Wed, 27 Sep 2023 08:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695802508
