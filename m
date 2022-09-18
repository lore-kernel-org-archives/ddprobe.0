Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A42568
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A71C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663528853;
	bh=1Cxc6clku9HDCcZnpvF8PAyqgilb96jcIQpDy06Qo94=;
	h=To:Subject:From:Date:From;
	b=GIkyl2BksIfKDVSMEeHfzPou7hP6QQmcVNbI+nj0vhWlF8vItrHfzNhGWfrn6HANZ
	 U7d3fcvjDG10YXBw2W/CC+EDvMzyR+R6QN++SVvUI7UYgxu0aXmpHxNljtOPuM/HGP
	 Wj1MhDzweyCsdoyATMtjIQ3gA1/8FBsFPx0G1T1xLTNExj21iaIxzeGhyxGDmpzmOV
	 5Lo6mBqCYnFqgbnEV965t9RtZxoNdWB12D9ZD940RP8M8NVFR14Nb/NvHQofN2j1dD
	 WI0PeO+QsdESuORmmjW5zeFoD5IzO6C98lLZuy9u6ssvprY0hopS6HcZCsdltQ+Aw6
	 QUhcKnP3yz1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DF9ECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352885334.5113.9132100312720057783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc3f3b0367b71c357c84b1571683d76400b3fea16bf82c8607d5507d496d16f
Date: Sun, 18 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663528853
