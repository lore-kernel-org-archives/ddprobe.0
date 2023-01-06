Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30697B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D6EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672974687;
	bh=gQ+3eqwrfcSv6K+5TVyedfZMsVuoZjxzJ1dL4QQNvO8=;
	h=To:Subject:From:Date:From;
	b=Kc9AYsUQIub1fvFTkt5y4jEF3e/RR50C85Qs+yTxhNgDFGZSXsLldBmXTtT99CKxw
	 bU1OuPP7FZei6eH7rh1YMxDNptCYa1NE86AG5GE4PTTiNus/JL24Mm6w3dS84kuCcC
	 LnNN9qmKoxzCBoBu9Ed61uLkTSGXwuCSj4O/PgvrONPdk3GcegCp8TEZ925oQSGQCV
	 UvxLJqlzaxpI6OQGHpptLKmJan6W6b6GIAZeDplk4hF4Jd6XUbhw27qr/Urmz3dLGb
	 m5QHVQs9BOsxUitI97s3wq7vtQCehcuf+PkDTd65PSu6NcAXlwQYTBcDqYRAQzyTpL
	 aQ1a4SDrXQ16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60871C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297468738.12259.13694850639879762263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b8d6fea142237972bf99a5231f612a7ecdeabf4257738920e7dab8d0937aaf
Date: Fri, 06 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672974687
