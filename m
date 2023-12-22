Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34311A5A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 12:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQougkdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825BDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703248697;
	bh=5locONOogMX8+KdkhDAku1FakSdbF/TPXiXr454tLIw=;
	h=To:Subject:From:Date:From;
	b=HQougkdt8r/NXAXFKjI4JXNHtjhyac3c4zVqjZ3vKsk0YMi9bbHoU88IY1giqGaWf
	 9Fbq3XWrg4KKujbCxZmzaqaaElTpbwVcquSay0vL+qBoVfSrafot225eHCqNO70bNL
	 GOonRKXSmczP3x191LRam8yeSZnoxfNGBj+78cKFscvciA26gI9pJ9kHk8Sv+n4EWW
	 QX6vj6/Z4da0B+KPdAhmLHiJoKeHb45OGKNANyAQPbgjTkzD662fKOmqCwCwWYu7dS
	 E94tn9fc+Zb42q9yngACLxs5lcMxneqAB526EGZyXuPYTVpwWNRgOSlZlH3no4SmL9
	 SzQ5jKgRquemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68488C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170324869640.32243.14858729166425693736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9a832e08805f08da8373992790816b990dce2c45d8e8dd99d1809172c90edc
Date: Fri, 22 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703248696
