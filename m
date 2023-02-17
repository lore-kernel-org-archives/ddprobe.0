Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4652D6ABD
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E647C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676643846;
	bh=dMF1Poyd3Fw09eHcnnZuRDLS6MT6TZhXV2LgETm+3OY=;
	h=To:Subject:From:Date:From;
	b=sxB6B+DrjW7Loi3ttrfx1oEPHp+1W8+x6DlfpvAFwXdDLs4b+X5qayjks5fOvPZwn
	 X4w5AYomRRLjJ2uA5y67Uv8LWGSArFy5IWYcmUfkP2nbzJJQHie1JwiEYAM+mW/E0s
	 /kIQbOQjd4/7g6V5vquY8GgmSuyrhsUiY+tGgnykCNtoasRGYf1eGdAbs9kWGIYWeY
	 19OUuqAANL/xQCgpH77tsDsq166w8MmHcsgDIw5GscyOpGibdnqeCvnx+mO7GQ/15G
	 ZVCvkYP+GYyLlJ4uJDHOkEv8AxOmWB1cXpFzGKv/ru8DZgxocJqBNCpR+/JS855avB
	 1LpUh0NQxlkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1EFCC6379F
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167664384597.1361.9023357635390197338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd936603871d654467f98e48ce1fc1ba490cef30d655cf4d07590f4634dd7abb
Date: Fri, 17 Feb 2023 14:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676643845
