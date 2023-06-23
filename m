Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8FD3D9E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ACAC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687517588;
	bh=NIMTd7voj0R6O1kdF1R5p2/t7fRnUXJgvM+Q9aUtQSw=;
	h=To:Subject:From:Date:From;
	b=HXfSMTTY+dbE74oS//4AYK/ptjX+alzwamdG9EVDVAgnIsaCVsN0ZTxmnw3Io9/yB
	 nhJJhmwsp/kP2OALoFVkpv905BVr7ZDgeZNqtztF6Y3WcvkbqaLfx44Wow8q8ObPNT
	 /JzaxXGdRzf/Z7ofqz8ZrP3hZbEZaWGrUw5aMleLFjBDjMUaioh4xYFa+++Nok2pVq
	 SXjQyJNoZRTGTbfTBncCwyWXze44TclyUEUwqq0CbOTGmhVjlG+Jr83vYX1/PZHT2C
	 70pveh71IoJPtLm+5zrzAQNtY7T0cSfTyuJYxF30PzD3Ds/2X7XLxDOXoDlW1Va7cg
	 nydMuws3SR+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C7CEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751758868.15672.9141796111879853993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1b8372cfb69ee8c5fe11f5074ad6ca565f729037c0bee8901256c2eb9ff935
Date: Fri, 23 Jun 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687517588
