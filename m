Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7440A7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC43C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687603388;
	bh=xylhdi7eQQNYYIEgTClTGlDUxdnBgFkjlxBzEjMFSBw=;
	h=To:Subject:From:Date:From;
	b=CcOf7rOviY6AHoJ1tA7U/eyJJiwxBHQUYRqAE29M1kLTA/f+2DHWjin9cKgLbNxtc
	 rXj8LVH0Mb3ghvgdiufZhr8rFHP7nqwXDr00jo/+5ud0mAwT6OavjzaCnKctiUxMty
	 /Z1C1iWi8hRm7c3wUDz+AfVo6Rh7UAVoVZM71gHXjuQNWlbw5h0qjp2Uya3/qKp3i+
	 5IZEziI9gi5BAi7qEtnwspIEATkbaDimk83fQ/fd1VRdoKxuUB7m7svonHVrCKm/3X
	 MlOx2fz/nYN5LQRTgzrg13LNpmPv1XfWbqHyuYWK6rQdaTycwJbj3IH95hO9lNa7qJ
	 Pl8PhRLlQ7mBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B336FEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760338872.18106.4900204240767425960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3def18c3e93b3a99510e25bd76be4531f5b6913a36566deeaff5e2b17a19e56
Date: Sat, 24 Jun 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687603388
