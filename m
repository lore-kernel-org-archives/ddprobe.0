Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03E9EA2
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68868C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664358653;
	bh=4Ls5cOjmFJZu5R5AYfmq8RDYEPgFmva/HwV5PaC0KRQ=;
	h=To:Subject:From:Date:From;
	b=uwRU9Mcl95TuwaXjowM4p35Pb5BoElgZTFmmMb05Vk/o1BS1POq6KhbSHWe+RDxQm
	 wxqUEoc/L8CZbhUfMMyEDnFrAcqHRgqsOfDORIC/E2l46gdg9CgDyyEY3iOA1JvuHf
	 ArPANMGjzpeTvFG6lGdsFo6M8v9Uu44OCAif6ylR9rCpreVX0+Py44fTvgyE3sBpii
	 1l4P8CgpQca91rfVwiiMmPtw04L9Es6niygfxC7Sb4wenUZvTXAqpKCNeoOtdFyz1v
	 fm0etjCFKvXqaM648rziF3IyDONicwQqJ53z6tlaptLEGKuZdTTt6hPwyyCROQsyQe
	 wFuuzp2J756RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505FBC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435865332.24562.4207793955145361325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab0ae4ebfd44665ba58abacf24d102abbb613cdcc497246ec656317403a0d6e
Date: Wed, 28 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664358653
