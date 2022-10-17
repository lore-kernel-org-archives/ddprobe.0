Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD65EC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B47CC433B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665978653;
	bh=6awA7nZ/eXykwzRP8AdMnA7IrZPFJSV79qx8tcu9Kyk=;
	h=To:Subject:From:Date:From;
	b=vO2zli3v907G6BOpbFkD3StQF7oHVIUxE2H3Q+xjAwW+WMoyMI+qGTxdtd3QPJ1RB
	 SK4WjeWqrHdNP8v3U1zF7cN1PF/tjdhaupBn5vrsyRPv8oSUKKg9yBxt4GXvX/GXnf
	 Oly1WVxzGt7nYV8e9ssjMbYoPAP4EV5/ccDO1Nz1GgARquleAmRz0QJokE+cMWTlP1
	 JFawLKD7e+ckPj2pJ/RnKHZvHJ4VGcKjGeglgnEnB1O5njFQnEogTkYWbWRWEJwwzy
	 L3n2nEvB2rHt3jkoOWvfgrLHm/mD12HO6lVqGN8TTJ3F2TurmJqnZYjZvLYnTzjMDu
	 IRvvNMDDHcVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546C3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597865332.3845.15320235908468660235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397a9e397623a6dd4a42003ee79466e4d9ab67c1c37620dbb39d7f3dfc6cd392
Date: Mon, 17 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665978653
