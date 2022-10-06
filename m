Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A7B375
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76714C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665017453;
	bh=pC4JyXgnzwdxp3pTwENB89VMHqvNwbvj0M6LiCXwZFA=;
	h=To:Subject:From:Date:From;
	b=eXga8Crv/CM3yh0oGAotD7v1VsZoiviIC4Dtao++vJeZGta0HfEjM8wZPMHB4o2Md
	 eFT94olrkwJFTkdIFrkHqQfgll6pdWCEjAkQ2aCKzymJO86ceMvwft6T0g42fQvCWY
	 vL8zmaBroBmIX0qmU6CWMKGIazOZZ4Rn+nwqKgzKXTw12ZHly0PL62SLYggi1xXml6
	 283Yya+IQx8OsAA7XGWEfWyyzwgU7VDiGy/CzhuajjIqex715rDy4ASge8mKOg0nog
	 hrZ/ZZ//Vf1xUqzC0xvBjV8qUwmeOd+H3X7tRBwXSJCKqE3OqeAfhgWxkQS/TjC5VW
	 Dedaoh/CKdnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2D8C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501745335.1416.13307719424938407773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b70384e620e9e06c9491ff1cb12d23f41d32c42cdf2931880f9c9b1e2fddc9d
Date: Thu, 06 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665017453
