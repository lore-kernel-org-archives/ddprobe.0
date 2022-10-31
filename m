Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C347C7E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7F0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667232654;
	bh=QMKjhVaKkE8J9Pe/ti4A8jIqsHr35nh28icZTJYnizo=;
	h=To:Subject:From:Date:From;
	b=Vu4lZuumh9xT8dllwceNFePA7fUGMFp1rc8bK/rVj2j78+/2ZuHqxYk9kK2KtAd62
	 YV+xOiQZGIOUcAgGGzUwRM1PbWWE+aHmuTpksDDey51Ja1IhWzbA1ng5geei/xoOk6
	 wuQ5G70NhOOHj5AhA0NawtJzFB1T0zLV6+Pd6PosV3PBZ4qeByE2SDTY0ZSpcwlRE4
	 8YCeoWpOIqq3p90pC5KWN56Hp5ajxQyUn44fO+m83Q9QnXWh6TKOrT3YMVpHtGHk9A
	 umCNFgtWGsAVm44KK5mo94beXewv+d05GUDrpZynMs++ITaW0RpVQmwHcIs41z4KHU
	 VFZUaAci2NKeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AFCFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723265433.14758.4463756157518031888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1132f707d300c6e67fe6973158e9ff1d3cf5c3110bc1075010065abb1e669f73
Date: Mon, 31 Oct 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667232654
