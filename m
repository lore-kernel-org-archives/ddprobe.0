Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3290D154A1
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 09:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5EDC4339B
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 09:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683539886;
	bh=0T3trsjIuJER/ySR9bVgTHoBFSYx8+DTProuGJGjTvg=;
	h=To:Subject:From:Date:From;
	b=Dt0wD6lVSRswA+G/rdsO+Hf1XhkQMpdSIJ5e+1Rf+g/fKAJ6UBHQjGO71fOk/Oj0B
	 GjY3N7fShqmWrQlus2K2jrzGb5TXjaQGCTPrnE0Gq3Co6zGcBzQBfkN0R4etO5OyGF
	 T4TSJHQwUC295mcSuYOURqb/aWTMy1l5mw4Ya/3Pcx3wCpVnt+MtWAyziu2STyIk5b
	 OP30W7sh8Q2zkWNk1sa+BXUdpfWTjg7H6LkLvT9tK9oHzVDlyoErGg4CnbwTSnv3xk
	 L+1y+r+XgzBi5ZUDfBi9RBDYtpO8O/NimH/vFUpuX3EIuKxmUy+hOKvduUbGraeLcQ
	 VjbYB0DZxwlRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC73AC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 09:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168353988582.3121.13238688364089117103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c77c77b97b913465ff895648a2893a2b0a746fae9a9ba25401c3e71611f06b
Date: Mon, 08 May 2023 09:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683539885
