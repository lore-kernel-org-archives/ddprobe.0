Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6A933CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA31C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323053;
	bh=5E7Jj+AZCE6vRtFUvdJ/TI+KepYokBs6uq5iRYVQtIE=;
	h=To:Subject:From:Date:From;
	b=hxywclxUwzoIZc6pmFD0isUIOxyG+bPRWEMS2SS11CdLNadRQLy8pzn6SINp4h6O8
	 EBTFNQrtuHW3KoqHXPb9PEFGD5y1Qvh0VTXpLWIoL128wHAJBuPvSOOFFQlWDJ3tGM
	 EtywTB8Axc2H+N3R68AC2jhF69W65xdI6hNKq5JjGucujCu8WYCywos0Hjvt0nbEDe
	 925WCWTkcyZGn0VaqhPAXSnSuaR7MRIT0RFVh1l6gfMHci4OXWpiuZE+0OZInex/Mq
	 6dJjM6P5f11Y2MQcGv+rALmvOVeOeY+psxQF56gQzvHk+vXpz4ZYVyWeklcQQTKTSL
	 UbEk2ndayqy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54058C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332305332.2949.9662260260424812974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2449c240e3cd3da3dfd746765a97900431142f1dcd94761314746d9fa306a246
Date: Fri, 16 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663323053
