Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC7A21
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A55C4339B
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676016785;
	bh=4ax/XsAyh97SLz743YRfYuS5KP4qc6Hralc2QuBhd0s=;
	h=To:Subject:From:Date:From;
	b=VkUF9zPCA+N/LGG2A4Jctebs0ULnKf9lIQ+pOgAT/eFJXs0toD8es9I3bz7bMjwnI
	 KJsHyomM56B3yZykc7Bp/HCdecZMULX+fsgTuvoG5zqDuGhyhl2Ffy2r/3X0+ebVVu
	 fYswnCI5bfBayCtJQrgirURXy0oO7wnx7nGYR2A42o95U02rgINXLApuLYJRHG48p/
	 REEYIhTrEleVj7KkXszRog78WGm359Rt/IHZpWMjpc7my9tMEzVhJ8/RptWlZ8on4G
	 OtLgYLozUuxzhMUZBklMiZxkHo11dgd6wl2j5lsCHDcI8zfXPTvmE5v0Cx/RcprQTl
	 ttcqaGgbKQtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B837AC636D3
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167601678574.9124.11517739304131676179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7356fd9760142455fbcca85974416b25323df170a2384464114b6638e1dcb210
Date: Fri, 10 Feb 2023 08:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676016785
