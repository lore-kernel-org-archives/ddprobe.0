Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78FD7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696C4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664338253;
	bh=iX5hKg+ot5roJ/y18G4DBq3W704M5QWhUGvnzHzlUXo=;
	h=To:Subject:From:Date:From;
	b=dhqyyIX1U2ePWlc8YhWAhFkj+8z5D/CqGdc+hD+9tPf8jH/N7IE39cOZ0WRlX7k00
	 nd/vAC9kv7uZnO5Z64+5ksXS/2RQiejnUpHMRjkSAW2P8a8EV7195kFXtrVzHAxnh5
	 dzV4ob6vYg0xnCIwSOaBw1rwQ4zM1cR30olpbR4Dakz+09baAa63+U8ub48/wFz6tP
	 LDkPSDxZsqpWaJ2NK/nVh/LtxDsUKCkUn9JZ5FZqnqqd1P64oEjPx3pipF5m7LF9QU
	 Ofp74GvC2X5dS5Uw7PE7VlihyyuTXpb7SRlNtzENMUpVJbW0z2m/oO8w2ddGaaQPFw
	 ZKp9pU4vvT7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F249C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433825331.32001.5050365374005492579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96b0520e875e2d66e21e2b1e4e8dfdec8cc9eacfccb559c2860b9a5812babdd
Date: Wed, 28 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664338253
