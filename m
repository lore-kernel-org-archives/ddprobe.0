Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21F617C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665624053;
	bh=BN0GioU/z7hGoy1CcNtqGJA3V/1Tx41qKzCXcYKFLwk=;
	h=To:Subject:From:Date:From;
	b=RsvT+cgDomVyR1LZZkoBKiz/B6mXJTxOhoO4d+DXFMp4OgOm0RE71J9GMj85Nmfcw
	 g5iUpXOR3OCXAWuWtk+GYHmb/0juXLEEIJNG9YlR3Lvx+2eDHQiwbXXxfeCre4pZYD
	 JsHMoSihLe1OOHjNyrwoeKfeak91FP6YtiFQvkKfr6V9UR/l5VOhjvSDBlP6vGz1vR
	 UMMpI/Iv8uwjVq/QcRP9VhF5aAVAzzaOWtGNcs5Y+tIW5hAoOt1sfpPlUML5jUKYqE
	 giAk0PUdQG/O50TeMrJrKyXMe89mTwAhEDO94cw2W28AAoDAZwAMitLyUBtjnVOazP
	 nAecZpM/an1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8611AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562405352.32559.6655876315605294611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43926189a4fdec4e7056ffcf5c719eb363190379a83b0a157896b66f8fa180a6
Date: Thu, 13 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665624053
