Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB248377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BB93C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671156087;
	bh=Tcz4UNY9LmTvZgJTWpXll9mpLiTLMGClzZ9ebbotk+w=;
	h=To:Subject:From:Date:From;
	b=YtN6oL1hPA5hQrc3GLI3LEh84BRsGVUQ1P02Uw/XA7GVk9WuQGrSgUkxSitOsLY+U
	 pk17Gv5KnT/gdMQW5bcG12noQf8R09xCz3TQgEyLNhPSCa49+XbsKJ56OCIGL9y89c
	 khzLrHphYhbZVk51tpAiv0SRH96zymmGTCxiwin/sBx6MkbG18/G3n8mjbH5mHUJTt
	 yQT4StM1AHJUitNKA5o7XrzOFZ9r5IyPuYvrm7k2IgUguqrGYlGtoeg4RvF4Bj/xmy
	 21yE/Ca749BGiFpdBoRn0tAgcwWVfi5sxG1HlVhlvUTomelSRrZMQFOBrRbVrIm9Ru
	 HjoXhc5t1vcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667E0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115608741.7546.14386050984881529208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0feffa6fcdcc314a8bc364b3e507d00426a3c2ea2816ea3ddefc67c55cef8c81
Date: Fri, 16 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671156087
