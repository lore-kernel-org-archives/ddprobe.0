Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E7F440C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D486C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665778253;
	bh=v4Wvgcm3c4l9kCHTv551YbMNaLm7scH9pUQvoo5Ylus=;
	h=To:Subject:From:Date:From;
	b=W2P48RWOxhGPgpxqG7j/kjd27pmZjppT6jTaTNtyhTuoHvPO70nasSIzukRVyQ8g+
	 iRwjc+RLWs3kLqph471s+2Sr6yVlHcfCdmU2QuuEs8dV0+rD/MpnaiDTzgzEEwz+fL
	 xfTpRdcTsKV5bFcgmj5J7J8MWYMF+DIXBlGMNJ6IH6MBm+Roae4Mw3PearskIGw/ve
	 ULMvr01yKKWT6Cx7tCkUmbDPNdRoLMULbpWyKRzRuSc3T3mOxZbCJ8P1RD/gFMmmKN
	 pK260h0vx50ZN5R+IDJLEkJ+wV3BK24L+Go9q9olRIe78/JBd6ywxBWhvGXnXT+V5c
	 hlA6xhkwUpnLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5741AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577825334.20915.16707338531327300789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e31a8f15a5f14e6ac25edd553a2ed97aceadf18e78c89aeceb144fe4adaae93
Date: Fri, 14 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665778253
