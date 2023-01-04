Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83507EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80809C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672827687;
	bh=X8sDaGtHnkVags5xN/YxvCp4RiZrtscjyfC5r4afTvU=;
	h=To:Subject:From:Date:From;
	b=USe5Lcrf446JnTG2fbeZQ/B84iR0Ow1BE7GqEHN48WMgUfvSb2ZAzC/qAreud7NZG
	 xJ5Kphm77T2/mSX8L6Hquxa3XVJdQ7WHSuMUUqO+/uRKgItEhY90MF8D3dE6WyNzlO
	 4e2acpxzQPMMm7mYLasGb5xpBt+AOxNMw4U5hI8U9cdGdV39DAMlHEOlZnAOCBn/fY
	 JzmfyGnugCDX3cFW6gVrvEOO3q+hqpRUCoGcE58S+xb/AsfTnKXP5mrle1AbXlP3Xb
	 eGLBu9WZB92aVKkxd1ALLWXn0HBhcap/qX4Wo4mXN+PfO2ttlMdRfORRiD2BFJbZuU
	 w1rhjAvaJHqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DECC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282768739.12684.16186834543020227199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd047a18983bf4c85e5bf475f3f879578c55f0c2e68f1f0e4a1671804a0ed77
Date: Wed, 04 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672827687
