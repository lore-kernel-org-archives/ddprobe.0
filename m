Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D80186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7115DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666863654;
	bh=xiKXfVMtOlUJPQBdh4AFoiBsAauPsTFQ0NanpwW5mJ4=;
	h=To:Subject:From:Date:From;
	b=V/n1vhEjVKHqIiYihosXY3qj0xbMrTjs2QsNuDFztibrLuyIgFgly00tBIA0R4Uvm
	 Euyvg53L0ICVgVa0L1tZ/Mw2vk+EeC7P5OzcX31iC3r8g1pdKTSKKnzLpilB5A2ZTk
	 BgFVljS7BAA4ZDgL+qEspjFJz2yh17SjDtkjaVpom4hy4uMUXRWRTXFvP8z8hntVyS
	 mvQsNMpl3AvV93QbbrNhpCHTqCU+JxcrPEkMr9I1rUtgOwejyGRcmrMiCwAkNaB41U
	 Ai2BZ6WtzprDVqrJOKXBMSpIVm/sOiyp1aZ82jLhwHqj3ds3IFrlbLjQsdC51pTnnY
	 Bjsx94YdiVRsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C59C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686365433.29188.10921635915910727040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6046b2595ed12c4a1e249f839e6890418f3363b55db41a49a35aff756d691fc
Date: Thu, 27 Oct 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666863654
