Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA244C60
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0757C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687912388;
	bh=zqumYqpY7bL3rMyHDZ+jBAUVZkUP3IhiD3/wyLGRWzE=;
	h=To:Subject:From:Date:From;
	b=Racp27fiSj9v3SvnXRxIWg0AHqKiUdcU3RkgPipMezDTNS2EsrGzWyRi6pjQA7CBk
	 q3wLod+fedRwZjt+yd5WgUWA2Mm2/iwZFkbylhQKWtMKslbqt2yR3Mj9NZhm5huMog
	 0ex6ssuCeXLkWo+8R/7cajSm+MB+nL6oYIRtzU19RvIZZDYSVVbe3VE1XkMym0T/nW
	 3hzWKHy2uMWpyZ6agiUyciuaJpPU3XF8afts1PQ0ySZ67zrEwW6BAW7+Fz64BamoKz
	 VnxEA9TsE2Cb1SyFXZmkH9wjqpJLoi8hoCbKaeBfUGzXRif45PjsosQkZA54IVHSGU
	 Hu0iQORYdonTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF52EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791238869.7929.10187534720325141467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bae66f41a7b054c3e8486939dfc0692b5cffe08b0e74ce1e990ea1d2a48aa20
Date: Wed, 28 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687912388
