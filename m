Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9E7375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36BBC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693874048;
	bh=Ca8sPTf1px9vYHD9hGIgWg1a01CWooIO8CO+Jhx45b0=;
	h=To:Subject:From:Date:From;
	b=j2DRUH5CUcTasPhKDj8GOf/RPANrqCi7MRtlDeJ0BIYlB4KbJVun5B+QLe336HSFg
	 pwQwXhpYJjgHi/KkuTMRS2CUzmsUHB6ZAyv+QtpmvG/KMaf3epWzVGwAd1iSFssWti
	 1WKJCFQq1lQ80tVxGROSndnBzd0I7tHOD8mzjayTL1MJ8fBQBcCVkD5mv/fmXhH6qh
	 kieXFc/ts70/GDD4HyTJ5zpABtu3kOKO0qenBgtRe1I2tmN9gsGDbhTZl4TNHWr2Qn
	 4qGuDJMts+X0Pg4M8lbkAyrqN+QXfJ9XpUhlaByS1IbbjbIRGOBHuP/T5jywg/WUO0
	 jlTSSkB/mlydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EDEC83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387404868.21588.9481868958492633845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd80ed9c9266db260fc7313c452f5c0a830fde8434985575e8fd26ba6c18703
Date: Tue, 05 Sep 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693874048
