Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403EF538D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 14:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE75EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 14:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678888805;
	bh=5aXwxMZr0l44ly2GR0ug5tXIh0D39+yAaB1i1idiwNQ=;
	h=To:Subject:From:Date:From;
	b=PZVec97R4MPk5/DVqXsQ/bbOSVwUtyiaWxzlNhp07WBHPvptRg+x9fWiRKnJ8EAMr
	 t8w7mjozcKB0flc5Pv3nN7m1YV+XG9KWlDiHUbIokVYUKbE9/PAs+t8CR/PfulKHaR
	 OF+69lAf+SaQH8ptZ9y0K9Zu+jDqHfwAuv7YP7lpP6O/SCgqJV+fFU3bg+0CDRaUQM
	 Y/VB4Q9MNj1z8jDp10r2gkv9wtGFwPSgYGrk++mr7oFEkaoN+8mx32e7M4OSLzFzch
	 7gmTjhxAuLa15LOoTKWuLW+FGNqf/nCIthY+Z8zFKE6MSGcq5oVGP3J/PpUT5IVEMB
	 6sdBTyAcEJbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62E7C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 14:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167888880580.26671.4825899721806604778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6712499dd1452d2f25ccdcc60ae4b7214faeebba17964d8f7cddd5a7e7c3efcf
Date: Wed, 15 Mar 2023 14:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678888805
