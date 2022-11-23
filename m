Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76DF7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69454C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669182654;
	bh=fY1ciqipBBfcGt4+xTTWF8JiqdCafKEuogGYwBGVytc=;
	h=To:Subject:From:Date:From;
	b=P4IXtKNSLFzN8FoeLbjWexgnUTPTumXQEQ/tHI5mN8b5yfQacYr+Z72Uhc+MwH8WA
	 JNdD/hJvVy1Go1FL/QshsWdGRdY1fj8uHx9tzAfKzBF2mzAMjsTH5+orJnSh2GfUWg
	 UHuc5AZGKDqB61Z2zHdqBKl+3+rrmpXJb/FWa0+YISzvbuNQEMlcjyoJD8AkXYvrcs
	 sfP4Phc5+XXeBkJfhu2r3ecmOXBWDYAJ1BcxBT8Zs/zxZzuKR5fK4L8PxtLnU3fiyi
	 oDzsEKY/cEZM8NJSmra44DOrIwXhZU7A27mkmQwEbm/QKEP3hGTBhRRR1feTX0esBg
	 8ilHXvgw7J5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC0EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166918265432.24822.925656826819764243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e185b98be55622bcb6aff6ff49896fd810e6823459a265bb8c5d7a120815fc4e
Date: Wed, 23 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669182654
