Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE73A7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AE8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662866453;
	bh=0i64DyEOz/mBmcd2cAArJh9g62S/Trfrjsck70DyAiQ=;
	h=To:Subject:From:Date:From;
	b=bQH1fiH+UFrYN2IL4PqjKSB2HvSlm99OHJp8g0xzkwdbQ21taSbWUsnAVfZ7PJS5f
	 2nzWc9bxgx0dyfqVmR3UQWo7LNyr7uMuGlEyUzs9H4WHn7boZ18xjvoY1mzU+0/YI6
	 1zkhEisrd+0xjQyD0jnLSIgMocZSOxmW/iBBmD55tIUu2CGcU6SD24DSL/u90OeQ5D
	 CcK339gv/ZNO+69bCwCRvBir100Gwv4tjFWv6x3UMz047hzjXe9PcubGvIeGRi64hI
	 o52wcrcWVcFhhZ5plMT32/6yOmZ9BfzpsNdM/kwah+30TuT5jFcs9HjlI3QF8IeiLp
	 x/4jfp24t+ItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B944ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286645334.19242.17501847268535344134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fed674482199e498264de1fc6600d50c991d544806a14ab12c323319600c1b
Date: Sun, 11 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662866453
