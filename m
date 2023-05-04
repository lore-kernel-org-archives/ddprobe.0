Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440DEEA6
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5700C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683187265;
	bh=xJubYj0PsG63u3+sCe8lHIuJCDms/JijQ+mjk8SVNLk=;
	h=To:Subject:From:Date:From;
	b=E0VwF2X5v7m9V5OjD/mPTQbWwFpNsUg8iSENgS4+PM040tVBAzPlnB8U/rZUFRtIj
	 u2monnhYRTw8T1Bwz98kZ8oYdkF8R/QUnXMr9+As1IpL9WJeJkonZ/vI1YousOxaMt
	 Oy6oixO9eovO9IX9zvfD+PNxuxhFVIhAg2g4wCiHFH3gBgsz4JyTU16uvAK2kdx8HW
	 3sndnX5R5K4Qn8bSbqvwwcfTYDnbFWbzr5RQO2ww3XAtH/POsDFjL/c2tiGX66823U
	 CUFaLtPgWFmdVgbSe45ER44PN7M1aejPaiVydugpSwKjKSQstr6xVFf5FpXJyc3r4V
	 mPYx54aIyDwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC187C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168318726576.26998.4305819411982066353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe60fa239787eab37d79dc126fe20ed2f005ebb935ff47c0216340c044c9385
Date: Thu, 04 May 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683187265
