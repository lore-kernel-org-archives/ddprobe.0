Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19EC377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C632C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671157287;
	bh=UcI0cGRBKLwEsTG3J5TArD6qdVIHYXQjF+5jLjlOmrc=;
	h=To:Subject:From:Date:From;
	b=PHwYgvM4cmGLGAtxJW+xwJUWZbEIik/B3YvHwRzKGcJ91kZFFUIwutQaf21ffDhyg
	 wLvQNq3n3mVR6a1EnNhwlZMoX7z6yFuYyyEEH2D/NEd/LyNi7vrO9K1xWptfjLKGgC
	 cFpk6ESJxzbNWzNexO9EDf6lOhAC2ojaBkkiBf0S5hdA5dNqDMyFOhQQsEL+yqiNCf
	 YKzfULGaL2ssxhnurNhsDnS5Vcp8yOyXb0YKatwJPWxGLrjb9ZCbybYXFx8RNddU5H
	 8wIA65pF5dzHl8FDLnVQW+PLRlWYnpU6gSRbRFjW0vyIy0HxGfOm4uR5hbTD9/0GOf
	 MvddI3V9TmC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6539FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115728740.6701.18054870917641722194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d87f3a0349ac8c960c59852b0ca76e55678736af13c6e393db0d5bd6120f08
Date: Fri, 16 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671157287
