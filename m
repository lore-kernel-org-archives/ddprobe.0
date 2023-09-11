Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E33BE67
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82E2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694430248;
	bh=j3z0ZGG93tY9i3+ot8k0VpK+EYikdRAdO9Bxi57hG1Q=;
	h=To:Subject:From:Date:From;
	b=gnxEsqAj+Ho2QGf+qs85gBqFwDF0SesDN6kM2N0nlU3z94X9jtOWVviTeNKsadKey
	 CocllOwqtJGWrmamF/U+wMBfn9nEn2TxnwaGjT/SsYiXuwMqDGDxC9Yb4rQsOaAYxv
	 Gh7DDZfLe2zV5CPgOpp1OIiugZOVqHcdYUEKOuhWMmzWoQlkdEtrJPbp/W1qJe2bk0
	 ktEtZUY2FTUMT4Y9Wb7Ql3CVSpqT12HCOlv6StS0pPTGTfqxqHsVjt9T154AwTB67B
	 q6cNKJy+9PnWsdnvwV8qfr4CoTmJEF49xbJeYX61/D3g1twK/+XYpqhQ8wzDDyMXZo
	 9+1Wv26KiJ+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCFBEE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169443024870.24953.9771865986150710218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3264b2932d687334321cb0bf62c17a7029b93ae86649abefdc8c5c25180e4ed9
Date: Mon, 11 Sep 2023 11:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694430248
