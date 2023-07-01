Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7C51857
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CF6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688215448;
	bh=epjBjHR2g+zmLmWxG+A3olLhTDlKcwGRyLmOZ4TaCyA=;
	h=To:Subject:From:Date:From;
	b=e6OHIBt93sdGvVH2Z4i2nb3eoZFjupfbvgItUCPcTzwB0AHz06U+6UkQ1xW344Bwi
	 fYcNjhxZDSM+iTSlPGnLaAG30FGt2TiB6cyID3wa1gn3UqtQlErtPb43b3O2Qq1Mwk
	 mFinXUMejvoVHZv9z01I1jtxBjzl0bE4XxH8VIzxq4wnojIbqU3jLvlmD2ytOpvYyy
	 SwRUn5h0mhOncalKAFuQZOj4bdZehCtLHJ3ZTaodDvc8EW0OhysFnRGgX4YxlY5ElW
	 U8QGrxre+E+i1KQ2PaFHttMdnTuyrE59UJHS1J5F91qkz9gstjTBW8rcJzsmTNiZ1+
	 LJl9yfS5HIpSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA188EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821544868.2616.13501330953442142321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e81c2061fc3230473fda4dedad6c081182a33646966a6b157628c220235eb04
Date: Sat, 01 Jul 2023 12:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688215448
