Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAEC23CA
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E2DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662330653;
	bh=WCiDe5m6mKNo9TKsVjW1kd/RkMlYp60tjDCCOiXNO9s=;
	h=To:Subject:From:Date:From;
	b=VzVbiT6n2zpsjq3L6YuVXvtEeKG9KKnwdp4D9IqdPOLlv8/UzTmiAAHtAqCt1aGnt
	 gNkoam1FK0eSUFw0cSH4eqU0I2MMEXJHfJp/mp/080wJiwVMVu4LLdhbsFUcYm5vHP
	 tLR7gh3xHwZhYVvTIMmMgfD3huddQ0QZqWsQbCFjV2UDLcGL0658OXcTi4gpvyevij
	 8+O9Pm+C+SwKesb/1gDde5FcjLSEVW/RzfmFPT/TqQk0b5n8MLMmZcJF6Sqt0afpH7
	 IEI6zqwAkv/oy9+ZeGfDCihr50KGCJnm1r5XUeMdmInEVd9npTS679jZdK7hkTQBjU
	 9MHuInC3qtR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE94ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166233065331.32015.6384547890404325311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dcf03aa813f496e9526abb6e36b51ae3c0a9cb79776ac4e3ad6ca8c90bb8bd
Date: Sun, 04 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662330653
