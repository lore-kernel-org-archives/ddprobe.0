Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FF515A5
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8E4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681216326;
	bh=Re1/7SuqIMXuKgvIsEwnP/dCMlTPcD8nadUCvXmTXYg=;
	h=To:Subject:From:Date:From;
	b=kCKnt2+jeDnDbxujD/cDLCKrw4s0F8ZJCd5TDa3es7XXI8jcCJsmDkvXdPbdxVf+r
	 Bbs0FBbm2pwUBJG7KMks8L1zcWREWLD5dYbzT3SW60OMqRzdiGIMdD9S/Wb/Vr/iho
	 Kd4OGxSLAcAEony7HcCA+5tLnM336TA3568Uk1zfEURovzJbBQENbxhze0+uwFCGgf
	 /OAq1AOaVChoOSI00ZFoL7cWvnHBbZ+o5KYweffAdfbWH54F3fKcXXmLu0HzA3pSki
	 NgAY0zkgpMw0kTrpSSJL9viqLyRx/SncfOxYOjm4Pa0haRX4AV9XMsdV5fom1mPmUL
	 Q2fUDsXN5POyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC361C77B6F
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121632576.12149.12421706017977983288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02249de83b6ff5f4002839e0a7add2545fea078ccabdd67130a05961148bc191
Date: Tue, 11 Apr 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681216325
