Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA211378
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0A2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665742853;
	bh=nhnJhyxfbnIpWNYak3unt6va+Wk4OTQUyk62fizY0uY=;
	h=To:Subject:From:Date:From;
	b=kG+GeCvhzegqh87UMIBbMlBtyFspjwbhX1H0w57Nud5VM5DBoeSH+7WjAeEoqinkQ
	 gte14U/LNMjgO9Y5ve/lv/8g8RIwlY6weDjtv9ODNa4SCQ+uIrBgVSX7UQD8l4SAip
	 U6/OB/LY0RRPXSpwxg3rxJ7UzXWK6UkOhcvnFIstpJ6A0/i2Acnj258Fzj3zDwzcc2
	 4QzZi7XpPktYEQBetKkrvWgAog95qjwTPQaUYVeajtX1tEEp3gz6JSQT2bIRcABvMH
	 mhslsPKUIg8seQWAmtV6fLOme5lLwhNmVX6/XRiFxuT/+wMEZYkCPriKdnV6Oqw0kd
	 olWMhEb9HgHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53635C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574285333.28225.2022336409783058057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321ade95a2a07120e4eb80b9524f311fb00823bcf7cca803279b1256727d6001
Date: Fri, 14 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665742853
