Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E057E6
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7589C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693358648;
	bh=qlGVIvMrg4UlY2YDFOi27ldjcfBXKUx5zDarVKcSzbs=;
	h=To:Subject:From:Date:From;
	b=cS9gM6sfh3QvBOvVS2wn0gFhhQSoEN1GYhwi1Yhp91LZVsKeeXQKDtvgjGm/2kMXx
	 ez1zlnJH3dby+sOvBQopfGwESRU4Uejl1bEbmicJNr09LIF3dUOU7RAgQenDSmdd+g
	 pTXWM0bf+hh7ObhDIqvmAT2RWUUP0BmwNiQUGKH7iOYmdDoOFGwx86nQqQ4Zht70Xt
	 Od1iKfguJV5MfiyDY3+w3tkH3QWo1TIS+WYN3Ywzqf8TLb1ZLg+20OWrBiBnmOGf1Y
	 KiKjv5gfTbPR01dPlLiC6W1IgkNi24s9tCJRtkJ7/IDmbh9A0pNj15S/IaModJUojf
	 Fa8Qv75QIghuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29AFC83F12
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169335864872.20104.2698140379414225193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556747a84690cccb51de0f9fd60a7f632105e0880f4a6220bbd905a86c28f25c
Date: Wed, 30 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693358648
