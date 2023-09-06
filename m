Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF27653
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEF8C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693977848;
	bh=/B25FY3zmOEjzo74SncQXchKHiP2bllIacL7HaVYPkQ=;
	h=To:Subject:From:Date:From;
	b=im35zO2Y9cnE18Kub0mURIsQRU8N2ca4YeMXT2heLI4hj9swm/+rW4wuO2p2XkQmp
	 LFsa4kRhemvT9zU7lUgfga50D1L69rXyOnhOsKZ0kCwwcskxoohBHJQNPSNxxZomXH
	 ty3dXbPh6lyQ113oWJ0Bp41/RTzbWJJj7jLmkZv+C538oQBAm5OyG7zqwpbD0NbLMZ
	 edS7OD/nVJSMbXWxsSi237SLy72VLFJJRcDh2MVsk3rV9IahLHzztPR7rnk4ewkGFT
	 hjVq2Ph3g2Zqi/4TsRVqGR/MJ8ki0xy8uM21Xe2FjVH7Fm6RQDE0GTZfcBUr2td+4Z
	 eHAoL66Si01xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDC5EB8FAD
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169397784869.5914.10566266083412781617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f1ab7d98f11285d837793a2f6ccd6c15a9b499ae13fe3420d463ddfb43bdf
Date: Wed, 06 Sep 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693977848
