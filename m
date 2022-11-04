Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F1310E0
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDB3C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667538054;
	bh=WGClnlEedR9dyjplFHJNGEq/Roll4dtF01FxaJUT8NQ=;
	h=To:Subject:From:Date:From;
	b=SGSvVpR8XCvZF8vz10ZQ7sEfJ8GjSzyjfpLVFWgv6N8qauL8j07r+WcjNoCBH7B+J
	 OfXOOnMcG2yoKyTQQnNgtIGUO0LrZ8KaMzdCWAZ0+tcKewZnTF4cfnsSLZrDFMO6Eg
	 rYC3F1Mmio05VS+BMVJ5Ok184Ucop7zTbdTF1VF9CTR1tyfiLq5w1rBapsjMsxldxM
	 4DS/7+A/V/WRlLV6Mm9/na0p9k7e87z5dRh9WKPgjCwG2ZGP4aKA28JZSdE8Y/XZk7
	 amRRJdJyIUcmu/S8Rv0+JlGuj60HkgMr4rSg2Dvvh1uEXaIphUX7oA3p4AzfQY0dAg
	 Xe26sswPRkC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F7BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753805433.10359.4899408918361116247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8c63cc566beb3e32b9f3a4c3a298f889292c6c85eb872c0e0cbd240d35fa83
Date: Fri, 04 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667538054
