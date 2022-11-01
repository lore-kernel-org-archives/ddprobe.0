Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C1E1382
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB40C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667295054;
	bh=SEKjzZ+EtxbEG+OTZvLyH9OvlIz96pC3iVSff5lwxpo=;
	h=To:Subject:From:Date:From;
	b=JVjoqhtFEbIAibD1MAAUWe2zoPVeWPnk+QSOUKw55XAG0hbc0YYDaVCMy1jwzsW0a
	 Euag/Ookf1knJHBwY6pk5Ju39r3Kle9xTKV5GIUtR8SNW+KlOd2QXz8XzOua/bAxgw
	 jYSWQHRJWJ7BwZKL5IWc2McXjhwrji6zosxG3U6wo0EXKG2arwPpQJRWlE1hEEdqbO
	 MogJmY1f9HiY3bSq8XB2KBh+v0RzZf5f0GMRYcxOx/Yl3vgPTnn+oFX+5qogFoJcOG
	 TlXoZdSWjs7T+8CQiFYC/I0QV1M4NoyMGoqpjMQeIydkRKIuFBaVXPN8ZpI0p4sQGA
	 nU7FxLRa2PMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A2EFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729505433.25157.16231551591258213693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4021a8c21b8395f4444151391702b234ed6a3f3e994e795066546c10f6658a4
Date: Tue, 01 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667295054
