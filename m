Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1D463A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDECC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663407053;
	bh=vHE0ESNc1LPLGnwmvKXqj2jzXAo7QdFmUEY3iJ5mEr0=;
	h=To:Subject:From:Date:From;
	b=U4AFmS/XfdfHVEKnEUTBvoiirLGjwMZwc0xE2vBYTXKtxSG2WA5iedECtKdFzNC+T
	 +HzZUHzRyqa1ibkgTl4wdlPwv0FywuWXIIujrJdOSJpM/CZ0C/WKiW2Ri+nD6m0hHM
	 RxkfCC+WJmoA+TL8/EJnavIvyuencSDK4ORtzfnWGvA8q4fdinYiSR0tCIr5CH39DS
	 p3PE/U54/LuhDVnaDU6RzBDcvZad0c1dlzgEBHxI89SbZcBTA1jIG6a2bJlzuXUTB+
	 xsfaF9SgHixXkxLMl5VlVvwSElJkRlxMRp9stSjcV1t3+3FkJmOMuakxubMQ0CxXct
	 zg0Y7xsQztvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503CDECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340705332.31024.8180898008818132078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e4c15a579674c8d1a7be93735678f104fc3296c3c6d651d5157fa18e62075b
Date: Sat, 17 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663407053
