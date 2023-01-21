Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B283386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D757AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674274925;
	bh=WNNgQCWrVGUaZYsZ3mvOG6Zh0HUf61jFrrccg2P9Ve0=;
	h=To:Subject:From:Date:From;
	b=ByFU9yBcqPlCFwfaEHT4VJA7TA+mqCl2wW307/wV2wvvynXHqOh2nyY+OAtOszPRB
	 C6lrZ4nv9siaWaIbtZsnB03J6JZaiX+Y0JeWcO396YSqz9GJnV0V/UwgcH4/jXVh0x
	 WC+ctKhczooBoalG/0rZxMf2R7mIpCr1fKl8AwlwFuWinTwAfsjGmOV83OjSFPaITr
	 zI+i0CE/ToWjbF4r97zJbwbe3XBFA7ljIeHMTXv7dNKCAREby1/jUJbGP1QYaz8czn
	 Km1SEknHgrUNPZQyPljWxv9EQodICCluXp91H11AL5y+wYZsNkSQL5LmAecHrvIoOG
	 pGWoz8My6QoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62B2C52D77
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427492573.23635.5553648152629962326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873bb096078406be9b4d38af64a974a44458421662028b4ce542ef198b52b0d9
Date: Sat, 21 Jan 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674274925
