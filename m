Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE4F188
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slrHcjVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC83C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696735028;
	bh=G9NTwxrmU5jraj28ECx7Nrk7krChLRRyGhYqyXTl1Fw=;
	h=To:Subject:From:Date:From;
	b=slrHcjVVfaNmD4L6Jy/ZzUXH9lDMalmo3zgl+nLobq0rau+WL3G8AOgnYfSxNY24L
	 JvRESIczTii2zFuotU+y1BxyUAWFresDadVNi8UZGJMfSNU3vuvBlnRVVdgTrt3fRc
	 2rnQERLJ7867hWuwUpBAP5qYdG50UvMoPxVgFH4aLYXy0e3FnFLZKQKslyGkgrVPUQ
	 gAnJv4qfAGbZNLeSd3lO6+2x312G72kayJw3HEb2N9C5Le3JXIa+RZbk/pU1070q5H
	 Q/CxzjlovzqZCBApsovuZ6PnHNTmBmLsA3+HVssBAEs92hEoat+EohcsaANdGY9Tid
	 ojlUV7E002mGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9ECCE95A87
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169673502873.29306.11909180423626193124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ea2515d7ad88253f6b86bba6b84e161bbb74981a471fba2f45899612164b42
Date: Sun, 08 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696735028
