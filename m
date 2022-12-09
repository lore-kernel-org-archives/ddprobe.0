Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2487E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E845C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670550087;
	bh=3nmqlWpXOCT6VzmwqRHDJDWJj0JNoN8t8OM7trrAvwY=;
	h=To:Subject:From:Date:From;
	b=nfqG3u7pjeR1rt0eBomn2Q13XOLSCpb4jdjiGtvbrqjGz9WhXTUTWPNAbuM+lyZIV
	 sJHMoO7mOV2MRRzvskr6/Zl8FtefgZat6wBvM1OoItyTMkR00tOfFk+x9KoRXajt8c
	 ESLp5j2tv1Xr+3pjGvapArbIgMFkLbtPHR55XK9coVI03Qps+qYlpmOngajkNUYNEX
	 ++piQe3YHzujvL1V/BP8IUhV4RGIw58EBBmpwd/M8jhnsMZVb9VMUoe+HsWmAGgSRh
	 lkMQ+oIIvOQGk0OmSlGbb6Kb6nk2IhEfAPbo40aHlrCdBZmLYsUf06THalan/vPORb
	 lMAtI/N4XZrIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71222C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055008744.8669.2223631966926880334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cd2d665ebb190d0a8dae54a901394a1fdded63fa73b1c1781c64f0323fbe34
Date: Fri, 09 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670550087
