Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CC01878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74597C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671554487;
	bh=4zQXZG7QLZ8SnaISCxcwiylEzIl4lvhu+gSqEn6k4Uc=;
	h=To:Subject:From:Date:From;
	b=lKDoNl57BK3IcNDkr06AehQ5BgjtoTvboC/aDIADBNSr2QZmnnbw83KiMpU0Qpl0Y
	 DGmpeiLVCaFQ+5JeMSkxFyEV7RxO/IgV2/9MD0H+uEd4GfjzUD/ey2m/AN0oAyxwsz
	 CK+p95T/76RvjhdGuZSh/sWOD0RMQ8J56dqWt4ahGUMZJhlp+pJznafew9csX6TtTW
	 Dn/UP0HbFrKf8k9RlFRsh2MYLs+jN6Jzib2Bz7nJB5JdgGN5ugO+9e8wwv78GF1CAJ
	 wbOD/vkLT1VIAIPvcr0BnjdGv/PvEGAV4zLAhdr9zNbYL+GcusHjppoeWKedInMGSQ
	 sbWlPHpRUvGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB24C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155448737.13389.4474688274938952484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd0ce681c6d6cd4784d381f111b648adc00c23fd5565374efe00dd8916d0db3
Date: Tue, 20 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671554487
