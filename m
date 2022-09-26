Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED174A04
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B97C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664230853;
	bh=HU1uGlv3uoGVJQ+tbbeXmbtJ6s+DMYyObo2GnZQh39Q=;
	h=To:Subject:From:Date:From;
	b=Jki+p+5ZEYCn92IuLooz26GNpeCMlQW0Agp2HBae8aDTgZ1Vb5c1Xvq6+me6dY+zA
	 DMdJp/uxOizU9Q9rbzwu2avJIqyFCZlwP+Y/ASpL8qfDoRGAeuRSykX8gZ4a1HVLTl
	 OvHvzYxI/C3d96maYt2NZ1FESJ6KqUCGVVYakVJhASCvWcsEDuGP6T/vdN3xCxaml1
	 +3B5mpDZfunWyNrsp77b0Sj5PkwX7Zc0bt9EU6mTve/TA7si+8Xh1WnXdGOn08st4Q
	 ilwYXihbXCc1mitJbc6+toqOT01cPa/NzqXVV8YZ1zKv5mqQavUKuCTnt6UVEOusf9
	 vi0j7InViu3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FB0C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423085332.16282.319207832140529630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d00959e5e7bc253c2f6dc845030b5fca806cf72cb53cb8e2faf90ce97f052d6
Date: Mon, 26 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664230853
