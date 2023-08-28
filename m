Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CD813AF8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD7AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693250648;
	bh=4kp+WCZBE0HkZdkTJPI4TRxV8HXDIaHAqETDt8OnMHw=;
	h=To:Subject:From:Date:From;
	b=RB/JhCeK/lQGHRRGtPFo3S0Ji0crs3dPW3iCnP4QlkfauHKORqGXEkR9RRobZVyTR
	 9ATTxfnbeIqN+0SvZHR50/4cGKHlSyun2Ule7naC73V2CRclCUPDUCiyU+uQdnV+8d
	 ZKMwXpM8wy0wyApxC26ulfA25+v6BIbRXm9ROvo2kwhuyojAaqkuXafvotCx6G4pLT
	 v8clWMgNHXhW7dfPkZHs/+A5qVdJrcZXzuW4C/rbrWeZdoLsWseQgTVtowaqF6W6eH
	 npFZbtrgTDSg2BiVCce74ui8jJ/323VcKQDhuYQvsBR7QugqTUKOlrZC0LXD0sbG4U
	 jpJbQN1lfRl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC50C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169325064869.14191.9981145238569339398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af08fcaa497905323f76ec309174390190d6efc7b313c189454421813a6313b5
Date: Mon, 28 Aug 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693250648
