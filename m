Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6033E649
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3034C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688269448;
	bh=L67hXqWjP3CU1i2u2vPIPQNCZ++kwru+2pUQF9IfWGw=;
	h=To:Subject:From:Date:From;
	b=K/GFU1YtWWy0lpOdUTq7iDFOc8wfLAgW6M4zm01KoqHjSHUaHU/vN/IH77N5kXOW1
	 VPTPpXhlHGrs0u+SRz6v4fZzyIDupumhKB/7No3EeCEN48DP8zb4FvuUZbABmAxdEG
	 pkrsjX/oHyADJ0OXkprE0BhiGGO7+cWMPmy5SGVQ8nwMv0ZDKe4hFCACra9zCvv/+L
	 OfG8Xfyc+klAHLn7FHczSyIp3kl9gzS0s/VcOWH2bssxIfcukgSwVLXxehbQdk4i7e
	 U1XcSwGZJNKWSPcSefqz6920db6TVUVaPYDacJP8qyDs4fdoQY+UbUd8uAr6LbIW03
	 M8ujZtChprJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45FFEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826944870.29762.4642049917252316285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16af74cfdcbb20429d2cf8d79b87541ab35d932026f811455042999602e8688
Date: Sun, 02 Jul 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688269448
