Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535837C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF912C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682320925;
	bh=Ut/L9jUnFSknP7LQQVuLlAzpNgPlJtB2I5jEA1t+5v8=;
	h=To:Subject:From:Date:From;
	b=Pxc8dZdwO4fis3S3u2WxubDRcvfsZajW2CnWesdBZ1uMrdXiGg2dcpvSVW/8IOmQQ
	 2JItPOmlaNqQmL0ja+LxAQt6O1drBIc2B4t3+RWG90Goe8XCH248Ruvld1T3MaOCeY
	 tq17FCE6YGsnmIS3PM3Mevvukxp2ivNeOl7p4sM4QGHE/noaapdn7YKk2MrvaVkBMa
	 tnM0CZ3t9ZTruqGvMUPXjcB2rA7kutDNM7hnqyPxuuhj1+Y7485wxM7/sa8OVkZiFb
	 Bij5vRYAb7Cl9dkn3Wt5f0cS9ikcYyVxOD7Lt2wvTZkWSC3cSpsWUsJPvvyRxGXA9p
	 scvDZIf3gzsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAB4C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 07:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168232092576.24329.17103194900667936279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3b9de29b7829807d824c7571a42c1f9e1df92e9c4b2b13d86114bb1fd2e36f
Date: Mon, 24 Apr 2023 07:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682320925
