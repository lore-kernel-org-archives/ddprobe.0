Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E54622
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 01:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5C0C4339B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 01:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686186785;
	bh=BLKoKK+y2Q95f/vHQ87FyXQgYo+znLbVyISVTKyLBe0=;
	h=To:Subject:From:Date:From;
	b=BRTnNPWUZ0fi94H2zBogXkWjFTiFog6V5JDsQD2bJgHL/YVwl1QzGK4wxUHpT9BwP
	 e3B5tBpX83wtMvXeJi7oYvb8/er67/w3eUasBMsDW5FX3N3aGyBfaHvJQk1ON1f5gw
	 FX4MNoGOq6/SrIJo4SXiDsdG3miXpKlDwH1cuPe9+299jerhD60HjJnGSQA8kKEXrs
	 sfDtznXGzhBxBt0lozxJua6C1JxCgDVfIdKSdFPS4Lj5gmf6J1VJKA40KhizihyloK
	 N5JhsHIZpelavLetOChlBObZJYrnxB/p5dyZs+JLmVmxdji/R0rvt6gKO+vRKJST7U
	 MuLMAa/tEKl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6C5C77B7A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 01:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168618678577.16262.13086497649455799471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafa9dc59dfa5c1f5a53363519257a161a08364f6b89df767a2194a49965908c
Date: Thu, 08 Jun 2023 01:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686186785
