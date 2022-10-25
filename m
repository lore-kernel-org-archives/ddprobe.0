Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05457E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FF1C43470
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666662653;
	bh=XYA9+JH0rXdBAv08eYFlopSyrejxJwyPwheHvqRz3Tg=;
	h=To:Subject:From:Date:From;
	b=Bf1ip7jlTfq9gTlC90hMuaCL8FNsOyeGK23rIBPwvOn8JHQ2tXUKKxH27cToQOBBt
	 RR7KL8JHrlqLA4jDtiFGndeg5k30/khwbDZ7rv2k4FZqm9u2R33u7m2Qy5mAQ46Kfb
	 l6X52Fyj6UNmVKgwaYkCV1J0ShF4AVxozVGiSPd65uZH1P9WSSER8Ajt3iUhrOIvOS
	 dO9UMJyqnnlH9aQWMvYSH4bjZOa1wYOnQ6YlDsIIOY1ncKabVJkAL3V/9sQjCPpG0o
	 YcsRL6UNckkTqfG6/b+a3kXWZWuTY5FErVUBOiKIcLnVW5pRtLQEEk6iPFGoSDJAN2
	 JRHAlsEE0KL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5078BC67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666265332.30934.11458843742092412563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b21641f32f69b32dfc900ae01571e5e0533e0a3b87274c6e3e122bef9afcef6
Date: Tue, 25 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666662653
