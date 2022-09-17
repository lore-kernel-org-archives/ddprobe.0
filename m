Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CC336C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3EFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663378253;
	bh=fjkoCgPQsbNu58LbAPwSVkt8UWMzGLs5zz/z+1HNgDA=;
	h=To:Subject:From:Date:From;
	b=TVmLtPoOf2qWiqIlf81PEzkwEeaq1LQazuYUdNOofqYTsLxsPaCKRAiG2ld4LNDJe
	 yxsbzJvNYSFJEU1DKfNAHwSbgiWRFgQf3qXpMn/gotzfGEnKUlicr+vxHoDa86A2eM
	 xM7QFvhEuGH8ewLzCY6hr+Fn+exdzwksAJ7DCtC1rpGkp8PClfNmiwY0Zv3RIkl/bO
	 E7GyX42zaroVbOIZNxPo9KQ0UK8n3nc4y41+djg84XZiPKIUc2Ivjvzo1w8OnzJv5F
	 zBzPX5qnSAs0qlSItG1nit7q6VJW4bH+xChrv+hehY1ZyuDhTQn84RiofZh1dcbtwg
	 tGV6iPzbNduoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F679ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337825331.14610.2765679221340113204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102d9002218bc5ce60cd75731de4c4f6753eb4da039eaf0870948f80e40c5869
Date: Sat, 17 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663378253
