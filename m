Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB137F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E15C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662879653;
	bh=8Y++feSdajHvAWHMfBmk/nTBW0PMJzJHc8ZB1ptvA6M=;
	h=To:Subject:From:Date:From;
	b=BtoFDZ28YPpQ9vfb09XNQh+hjrRu5XXiqFCxkg/xf4t+cM6v9WSnQ5Ab+Sx6hzX+c
	 9m3E5BEEDsAw3KsWzEuYH7Y1A8qxX1p/uIBH/y0+3QETCK8pmmYadpoXx/O8zeuN6C
	 awNOavcGRHT3SkOTBclOqGdvpn8X7BGa9pJAAv1yKbL3UgX7qCzbP0gUXxKhDhGo3v
	 Dg/JeUAdqIC+GuyQyHGnhFZqNwYVqzVc2McxpYI67Ja74c835pRomMPUQovnkZpd8f
	 XiIQ8BVTlDIf0IUzW3sH3/yXCKPnVapsG+k078ZbBvVlWlis+Hh6dPyZVTzQ1t3JtF
	 LJcpaU7bbl5Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60637ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287965338.32724.14788235600780994034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f735e3ed848af1745d521b3aa006990504e80293c2905957fbd479df2ffde8
Date: Sun, 11 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662879653
