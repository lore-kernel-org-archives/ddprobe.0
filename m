Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B392908
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802F6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667878254;
	bh=eOCgnjVY0juZ+bNFtdxzFFXcudO8dlGNtpW8KGl5jrY=;
	h=To:Subject:From:Date:From;
	b=iCseEawJgCWp3QhaRyJ1vlkX0DpeypIYgFmUuIpHyQT/EVPOAbqroY9uGTvJ0nBFS
	 SukuBjho/iY5Pva58YzIRqNs0sYYWT55ERHjb4E/dbyLClcIjWk27+hps+tfE5V4Ip
	 tEVNdKZA66cjtplrymgsk+xSODFPd9iSRqfM0m5cBBs3YVlkh8mmBPlVO2Vx7XXl9i
	 gxkOl7QDMCPTaQN6+0aBFvQuhyam+JltbZ7b3DdLkpTWPoulwbdn2TpTNS3lbHRPUB
	 niTINow/48fRxh25xQDaYWfGrD0nz+HPDIS5sfRoAyUP38224ac2zAUsHxjfXgG0v4
	 sd6f2tqJa424w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C95DC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787825434.8790.3373174724106814484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50d4e47e5e24bd16b2279b311d10dc5e69df2e87c67e73876e845de149257aa
Date: Tue, 08 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667878254
