Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3263C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68BE4C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664730653;
	bh=3vBZXeMxPsO0qZ3T8YIQ5ToLnM7/4/oVdc0alOxXZI8=;
	h=To:Subject:From:Date:From;
	b=hnKfUINU9DCnZ5bM68Rp/MCGNoIUJmgfFH4Pr5o8VcLiVzDQDNaJhgR0qNNvDbTdh
	 pelYZWrEoH0gUzZWZWuataQpJr0rKBxN5chEL6xuGyBdSHcqqF2T0X/lMWmDlKDrpN
	 y7we33nVj+M0dGfUkzpCSaqPL5hK5zXlABn8Ae12o1oX45T/jcVXGBCJk3/G1DXRBG
	 PAPv1Fv7QWmjrI8kibFjJU5JwytgdFoL3nwue8q43e6JMvWuXYzVqotMaRog+dVCBy
	 8zjS8f34aOqYZa/bBLqSK0cfX7yTCq0WgexaMViV2st/59qnXcVX0p4OcLd34lKygm
	 1rAlQZIsbXruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D9DDC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473065331.26069.1282040439483642638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea7f6bc1413dc72de2b7e8142c1dfe84203b7e7c709626707c01c77ef358e49
Date: Sun, 02 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664730653
