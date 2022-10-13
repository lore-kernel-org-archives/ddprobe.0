Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABAD3C36
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706BFC433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665681053;
	bh=ypMmcnAJUja40WOuG6WiQJ3PV4ikxArw5vLiWdZQDyc=;
	h=To:Subject:From:Date:From;
	b=W8pKvsffk5WaCRo8InUTIxcViWhHDKFFLLw95e2OawXLuuExtp9054FHeg8CibpKw
	 F5/zDYRQfdmKcbdltjXEJeoWWxkwzra+HtZmOEY0x788p5EX2fsv9yHmU3DNXhIycs
	 IrPupRFLFS57D9xou/V3hmQCTVXyPZSM5nVlEkOgDjAHAlDFJlQyLzDBtrKV6tGgoj
	 7TPLZFHOK0N4DCiSYXV8Vf6D6TtoXBWSiRhJmMrOWT4YqDFIs+5rduKpNp+AJU1mYX
	 ZUzFmeTpFWuVYfRMY+KHO7zSMUNrpIKba57KiYvBIVb4p85WYHYxSbivjSCzBqLyLC
	 aAMvAjmOQAeWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5614BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568105334.22731.14256563879467998192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb71d9aed28b694104bab570706685f344cd367796aa399c2aaafa34aab1453
Date: Thu, 13 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665681053
