Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE66E7ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B34C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666604453;
	bh=uLDs3gPgAE6Ie5YhP1iXu8hS+VqWzKeElv3wl6OwtfI=;
	h=To:Subject:From:Date:From;
	b=ktI7CB7vXm/9+s69Hgp7NQJj8nEtJ/eKZ9Q59YLKNlJ/vSdNVipRtpDhm4+qwj5pu
	 moxWBsplunYDAJ6q2uK4K3eMf1gy+l7eq48vJ+6QOWM+BSNNaoicMfBvbmSw3zvV0e
	 K/OxGZo5+7ICHzaNATDCfGnRiWatiTUyjQO4G+QyFVGn1Hlv+wLSCD9Avk7nbqMdrx
	 /jhgVD9+kPaa83RKK6GnILV43u16G9NTYIdqx8vWImCT2Fz1kaLbr7e1rhurkZRCrP
	 MXEpZoqyuAk3hsOCZUpsUkNuBFit0hVeLmzHM+d0X7d6DiNJ90lIPJdguS1uFZtxXK
	 LV9Z6KXeABY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BDDC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660445333.11409.6433525296210271293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ed951febbeb8412d4a5a9b65b0849cc94e2c70e94bb01a205b59437747e063
Date: Mon, 24 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666604453
