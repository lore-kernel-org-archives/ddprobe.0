Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D450C941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC329C4339C
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681925705;
	bh=bvaQ8AS1inYHzSJtPceib3MeFeQWOW0aFh8JxFgda/4=;
	h=To:Subject:From:Date:From;
	b=Ky3xazcJ7sx0FLEntIu44w0rfR/zuBczlNc0lFxZmsbHoQYL3ee1IX4Tas/LCoE78
	 yw+TaLsD5h0IcHbA9bdXQCs+M6X8W0xZ2mr47KalJyz4oWB91NZGsgvGHr5xpSa9YZ
	 6pvuhzG+iUgplW9RortQW3DHdVXXq8WkVBKcKv1l/i4mhoBRzVi3mygf5keEUzFwsB
	 zPq0+RgTGXFq4zIG5b/VLLLB70cUl80EqhRvwKGIJRrmRFiepE3HA1bDfQlek6/b7W
	 4BPnV+NWAiXp4n7/jSB0tIhmfupJqgW6mt7eRzgqaOEzCDZKGau1EP/zK4Ui66QAnX
	 AnfZw2CpnvL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B846AC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192570574.23799.10798846623969441852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8d48e761287302bc1ed37e7d17db313c1697e76992ee2c3527ddceb5794026
Date: Wed, 19 Apr 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681925705
