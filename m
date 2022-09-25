Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0D07F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6857EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664079653;
	bh=DXGB7+JRH/hZYClJiCxzVqi1XQeRuFkIuXx/5jBigIE=;
	h=To:Subject:From:Date:From;
	b=ianyZB2bVpZaysrY0GrYPhiY6jFmaij9ujy3VORif8X61Vy0LzEfCzrEq5UAsPooO
	 46URd1KFEfGyVYDEW424RNm336jNFaUCJY1T+Yn2mwCfH+Ta9vqlS7NQBu5NIFhTRO
	 1n26wMfCgDLOGv4ZOVwKlqgWhhSlWmQqTNC1YCCSUzagBDVUz+L5lMbduwgm3zMmCq
	 BQxcR91I8CfXx4ztdvBMQo20gaQrHKk5ZveAqQiWaoUCIpWx1a9LEEdBoUiAXMQOjX
	 9Ppzxyd1EZDSW0PaB8VHrX73z/SHY/56BqP2MvtUmx21wQe6e6uUyMfuVI+LDuvFpx
	 BwBpch05Ky9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DF45C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407965331.11603.14967231526729912346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e677a5d91e5a125b1861804f00c2cdfddf8f668122d7c035c0f2ed90a9ec34
Date: Sun, 25 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664079653
