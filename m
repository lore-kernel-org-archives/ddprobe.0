Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B77CDDB6
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 09:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfxpVPVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE041C433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697104628;
	bh=9l4Zc1z3gx6fm7xXX7kdWZ29BSNaTcuc52XEt5huAOI=;
	h=To:Subject:From:Date:From;
	b=OfxpVPVSMmx/6hq5n9uf67sPBg/sgR1Q6QdMrPcRJ7JZ7Ae3H13sgqYdels0YldS5
	 jmboTVoYrECnmLIpvDjBwm2S94PHHR66GyFnv8Slmj/DWbvRzOqjXnsyDEnmHNqV5e
	 +uIcrtEDUHSPntgNgkaqoW2gHEOWNYD4/CXmgbql3xqMA0K0YDrb/AoFINN8y+Kr5W
	 zsxI2U08chWegXWUGZ0fOtfoPC14fWh/Nfie3lwWjffkCEkDtR7xDnxiLXAom5poJv
	 BdNjaYes3iA38g+3Sh/uoYJZY7ThF7l3wxnWw41g9NwjdicZxOdThImwPxcBcTYJpA
	 aRz4CkqGC5uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA047CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169710462874.21754.6062965322400869063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4d214ce43f426473ebe6ddaf6c14af657f1cb98e59a15fd340c6e1dfae71ee
Date: Thu, 12 Oct 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697104628
