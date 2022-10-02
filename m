Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B534B7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68EDFC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664727653;
	bh=rY9PUOKR/IXrRWUyTmo/cxv/q//S6WLeDMBlNRq1LAM=;
	h=To:Subject:From:Date:From;
	b=OTzuup4Y0VKrOoI89ZvcOjtmBwihvy41/OdqvHsPE4JBBMq0UsbGgvOV85LmqqC1+
	 WCi3c8JvOnmZG5g9HrQ7gXPAClPRq0cXKei7CtfWFUdMJJHHohTpeH4WjfodHg3qex
	 Q4wRVpBCTurPDPaO0x4iCb3eLJabWJB3W8mAT3guVo5S2K21F1IJQ3KKDILx3bTUgV
	 xA1kWwqeiZlD3csHftyuC9Wf7OtKP1OGRJawD6lir6G3jrES6OAZhciaZGP9yyb96D
	 fDa/g7lBa9XJLSKE0qAShsyCOcrScu3gevk589KG5ZP/vL943ZG5atGeoTVpULgiFn
	 PEnp+k0rsHYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522A8C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472765333.9365.15346547526207986720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dbe2ce429fd2a0968bbbd1dc1f831dd9225ecee5d82dff507628cd00682010
Date: Sun, 02 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664727653
