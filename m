Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D945A17F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C19C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671858087;
	bh=Rpu0BUmV2DTUQiLTecsindg+wwQIhlfZ7U72qGKGJr4=;
	h=To:Subject:From:Date:From;
	b=JBshQyHV2644Ry4Mg0/+SQgd+2t+C9yRd+XzhYi4OvUUvS9OPP/kDUKRQWl/AAm+G
	 ZofUHs/KoxrFr9G6unOFYvi9ILvWYuQTWTcGZH2Dfe6enJcNRT33qe1LvTQ8bEdLk7
	 uBv+/U2PsRLtGmPds/G/Nm0TvroizXh1KzlvSKkAMss3E+qGWTSl+wAN90VXjI7tSd
	 iltjGRBjNYF1wqqRML/wkHuljfZjuu+ednx7RSuHY1c3AKnW6M7DCH5qTceYGllJ/P
	 G49VM9YhoFl29SUqYKuUKoL22aLWRz5SfDwL7YtQKNuWHIc+EFxB5mj/Eod20BHVCV
	 axzYL52Ebndjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674EAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185808740.27226.9242825585228952645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fb001e4b8c774756fa6b32bd57cf3d1e805606f9fe4d80256335a1b5dec23c
Date: Sat, 24 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671858087
