Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0972115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8206CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673637087;
	bh=7A0PNhcU9s1rj/6E9x8r4HeXPKfUrMLPvFm4aK7aAp0=;
	h=To:Subject:From:Date:From;
	b=O6xtu8kxJzejFQuKKifsEacIDJV7MNej0oLvms04uWffPpo5sjYG81zmbhv83+gVf
	 P80pPmgIQV5vIwMFH50CAdrM7xhu4hVLjJtigcroWO3zsWkUTQ/A0WXjiCh7yiW9Mi
	 p9LRSVEENthLXlK01U4Yt2Rxz1WWVTiJwCwnZwG69/bZ8Wlzh2dAz6sXnA+HMry6Sg
	 5VUUsliVKkoFUnx27vc1/nct62B4UeqmHuZW/ozIWwvlx4mvkyTVQpO29cLcIUJriR
	 UztKx+ItOtx6qFjfJtgPPFVCzD8RELE7Pbh8dHPWEDsPWyt9I21Z01h+8vqKIwagtz
	 jvn8EMfgGw13A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693E1C678D4
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363708742.27365.9406889048713079407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabe5d57f6a0557e440f6af9eb853521ef5644d81402d72fad5c4a9121df6b4b
Date: Fri, 13 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673637087
