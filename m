Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D527E28E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81570C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671882687;
	bh=gjk81vFRLCco/h3R3pryi65r1ROgwV2Q8vl+zJHoAPw=;
	h=To:Subject:From:Date:From;
	b=HHyhR9Ytn5IYg+X3SrJzhXuC7qAwNgrbPDH4R8a6Nq2mEEOGPTMpwD9M+96RSgvc7
	 iuA3gZBPEIib1mRJBeh6AckH61TWyMLa+Jt0KYwZcs40V2WOvY5BhKAcvLViopUVJf
	 HiZL+dKCB2wmlH9BjRcaYzOILOS7nFRe6QfqJzsWgTv/MNR9TFgZjh9HlCzT+umxxE
	 883ntUOWBDqTDBP/vwH6kHT7ZGvlsddIyfmQeMz/ifx46z+ymHFR7ZrBWm0kAt2RTW
	 abBewdaMHmCNKVg9+rSNIdRGrOnrYagNbGgn12XGZW9dTcCB6W55mYELNzu4O3/OEh
	 kJxI98uWwVX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DE0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188268740.28453.8051965711446472006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca18da51437d26351e527ab7173981049e662df342b52a7dedd0459f2046f652
Date: Sat, 24 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671882687
