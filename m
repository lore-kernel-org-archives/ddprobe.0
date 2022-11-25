Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC08B33DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFE7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669383654;
	bh=eM8S4MI5XfzVpsPD/FBuNRjOs/WtHddhF3Hcgvkm5iY=;
	h=To:Subject:From:Date:From;
	b=q0DjivYkRFFET+PSMbAXOorNuQdDipImWGTgSv5qnLcvn+QHaI5seZ3JEj65y3Anl
	 xJlaFGLX0LQg27d8uAXh8UEPvAj0mvimO7jFAtdEbf9DLTTibWDna5cpSSNH+vdRZu
	 wy+QQLKBnnMiJUofHGStV/iIr4m+8NNKjjnhazAFPSHP9hnY+rVhwDpqG1Bi8KIp2B
	 xUN+5VKRu8oJVS+Y6tyPWakLgAhfOXOBtHVpyP3GolT4+GNtltkXw39RoWjsV/mVA/
	 WaYzC6OW8w6QPEEcFw72lbRM1cDNS3hcjtnQI93zVDrK3+OgeRfD8lc0G/gNoARipS
	 CRX/7/ukowF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AB4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938365434.14370.1320972627462540694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82571a1487d547ec295b24b27ede10a950ff4c8ad1008fbf6498bf79022f8989
Date: Fri, 25 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669383654
