Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8409013AFA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2F8DC433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688061789;
	bh=Cfhj4YqWPb87liEvKw2drp2NsxyTwGiQCNbRTBpRgTA=;
	h=To:Subject:From:Date:From;
	b=fnHfj9bki4BgwFGVeOadfkSOMMRRlb+ywVAouxV/LJE1XZLPa47p3FOXMnjsXm53Z
	 IfIW6giQz4bx7s5VWY6XzvxYR/t5fDRS4dfFOLHfp+JAPyjLLpb3f3epdbqi+pBSEl
	 pSDyY/7KX3Ch4hUPTGIu8PydGZMS1K+1/eZisDZN3bV1ksZsArp8whcvAGRWcUhMXj
	 3kkeZpGleEXWmTuzcevGyC5pcYJ0wpgIoN81jqPlZ/ZimyzsAF6Epab1IU+WMmFeiJ
	 8ZB6dyJBVVZEvp475AcevIAHMv7ydUIBHP3WB6T/JwAbzfs/UaabtVph8g9aZjNH1W
	 /rlGupQ2ySKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE6BEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806178880.20056.18216534222419998322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be983f68be873c0745e58e50026f4335ad8cab9b278f2c0ee15d5975b81f030
Date: Thu, 29 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688061788
