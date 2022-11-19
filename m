Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEF837F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71563C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668824454;
	bh=HoowWqH/h21D36XkX5xbpjoW8EJtu19QweUW3ujPz1Y=;
	h=To:Subject:From:Date:From;
	b=etzzxjB4/jPDy/JusriutMDaqKa43vTGiKgf8fbzr8Mze6UsDWwWMSlcc8u6pXDuj
	 oCNOkd7wzxT+TdzkToeOqNXEb3/Sv5OdXEquRZiKB/rNxKl8etzNmsxFwRis6OzzAA
	 pjNaFaYucH2UGi5tuAOE4/TPYk5Tf13B1HVCR0EW5Xgpy4lry42s+nENxGOvvdxNrq
	 GLBqW17/SM/C7CTCgrc6mhTlAVS0jMASA1wgzBQ7cFfL6urecAPmpU3QWjhKMlVObZ
	 83s/Aw+NgSpaWkP7fIH2CoUxoUSHmOfkdakXovQgkPbFkSGOPD4z2zZLOQy5GkVuc7
	 kbkHudan8HezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56871C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882445434.13973.10271876805412136440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462fe12a5b7612d3696050994502ef5b811a5d71f4577a1fbb252bd52e37323e
Date: Sat, 19 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668824454
