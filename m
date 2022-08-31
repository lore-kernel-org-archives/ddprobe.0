Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EAC620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726F2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661906453;
	bh=o6tt71po4SLuNpqlUlov1zHDPAesnEyAmReU60QZqTM=;
	h=To:Subject:From:Date:From;
	b=ZaVWr5CtT1a0Kxkcw2BrQlT8Efy+x/5IUkqv2ptRYlxLZmN9Hn+4nsrCPNBOjBhHL
	 MTVz1gq0+oGGG8e5YihfuTzaoeLCvLqSAxYZLqL1OTz27SmcXq5A0Ij3QvBIFLXWkf
	 5ojEHJ9loQ4dP4TvluvAHRMZgvfTeoOrF+44F8mknpjDmGp4Ibanu44kUuMq4OSgDb
	 LyTfTsU3aSM3VEJll2pFslyXTFWhkdujPhqmhrqu80XOdZjdTuOs2WTDVMu2I8TC/N
	 SABTl1aqAbxaZImuLD/fgxqotK4/QPhaPxFdWdym2O1R6+P+1zzQ4IGUtcLJkBDm85
	 mNlWa2mPtIpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 595A2ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190645335.23505.14524920589778129976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713b152fd7cde6dd20fbb43b49b78d11f2dfee4479a0cae6aa6b507decb60af6
Date: Wed, 31 Aug 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661906453
