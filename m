Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5429C818
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C7DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695503708;
	bh=ENeVE3RrhftCG5ULUzj1cmUY6FMMFHuMrUdvBOGQxWA=;
	h=To:Subject:From:Date:From;
	b=iibPzFkU48YtpM8zF8IlGSSVD2OiR3OoQvfj449KtpopJWlyJs5BFilfgTnBS/CQt
	 etAnBJdb+TwdnOBOPBm9vorroyJ8OLR3RRZhglARqiINcD1b85GaDgW99UUmNUTJpl
	 0LFRcngcZnM6SBGtKvug5PO7ZrPyJnEupL0pN8S4Lpbb4uY/yxqqYKIh3QMLiwuuUW
	 vzSnf9737NYK5sNzlINwn1HTUNXEW1oT0/Cc2kAotQ0pQ+HVbWuObnfAFZXNOEr42A
	 97u4pGqjj0VJfRolpooowZGnR6ll/JnYMiaFm/lVaD13w57GaSYqXKzn4xxnibCDRw
	 7mGBOoqY+3S5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F26CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169550370868.11147.11694449437778217425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93719f34356b23290ad5f94d7db67aa18069baaae801d11d2c4c1197e4636ded
Date: Sat, 23 Sep 2023 21:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695503708
