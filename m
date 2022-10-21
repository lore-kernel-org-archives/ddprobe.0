Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5EA17D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD7AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666329053;
	bh=npbxEENM3jjEIrqCWD84rUvBschjZnmo7wUBAWqFA84=;
	h=To:Subject:From:Date:From;
	b=DfgwL/+ssN77YmMGXvtudCy8CnDvdRiqiSF8jh1xnmdR3sksq+RooTlj9Bzv/u5O8
	 zNs7Wplb/GpYHNyuaXKTjPQ5WCVjW/OmQ5ZvwdsE0R/RMpXpDGewRG5fRYCe1WODZW
	 3jPn5Q33Bmbk880+bmsVRcwiozQ1592QQWFSrybtf1lERQdsU4zTPAtZm0Ga78Jle3
	 P92pSetjEL54oyfvxc86lOxUJPb6FCog0JEein1lZ/sPogYcSmzkz0lTHSGdADrja9
	 S60gdZgbhIc5gCQhl/Ilb2hmx6ds6KKiflDNu7LYGAzGV3HOxNCu6IJZHIT0QnGMeu
	 76E5KZUcTtkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E2BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632905333.1503.6328921198595446011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b984eff984577b0716d2b39ab58b573f23d87ce099a9681ecac0e7833fa1867
Date: Fri, 21 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666329053
