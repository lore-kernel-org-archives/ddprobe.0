Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3999D139E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C38C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 04:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677818165;
	bh=7fRR8mzfPxuAUdbbzSObbeSIwiIXDh6nmyc+vmQnrAc=;
	h=To:Subject:From:Date:From;
	b=Y/uFv7vOWKWNsqDHpRY2FkAymqxVJitb+rJFPx3KCjsdhPw5wRAYq84W06BRabTRh
	 UID0+ZLnR0OyKgRizZoJPAzKOZBohRjfJLqVt2LOIW6v5/4ZL1RADle9KGoQidUfwM
	 mNOykmjUCuJiFdnjNGK42S5VtPGtF5XxysiNrZF0SW+Z1fgIQ0QUv1o+AKJM2xAGmo
	 ogxdMXpRe6V587h7M29flrpwc6SxAjLR/zmxtPlyK6pMTpMPK4MbnNOpByBJZA3ztu
	 OL7e7YdaJZcQM9Tw9BohvM83+ae2Fjz1bpX+c0iUiMgamw3sKJAd50bUHttMna0Xwc
	 1/z25qSfiNK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FA2C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167781816574.5127.10623682395989962633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adeccc5cf239c65a566aa7ab671247fbd37648cba47eec5e74257cc91f799d09
Date: Fri, 03 Mar 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677818165
