Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC8BFC17
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE100C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685906945;
	bh=tOtxty4vdyJdwQjTzaXFxiOKzrU83ExzCN8lu2EPj3Q=;
	h=To:Subject:From:Date:From;
	b=JE8/izfOMmCt/tXxBIGlMREnaVpEKWP1vBGk4xZ8xb8kjh+aPQYOMR+sYImFpKaGe
	 lkP395sxrrInqjbv/OJl+/UVM1DPFoXTfve54QP/mJnKDaeaLy7RuEJM3fimxf+3yX
	 9gevyUVKVVyo6XyZBinbKSqVGp9rO1SWyx6eB96J/Pcv444SiuUTKXs0hQsrEL8woW
	 flBSvX5c/IabBjtNvwKhDp+4srESnXVCq7/U5rs81v9wSIZlV0jE2+Qe+o7iCvjLyD
	 l4/fzUJu969j/LmH+ywp04il+VWrYfoZqwLVnSVvA/Ug9cAskCZVFm8MOMThtdEVUE
	 sDJAULM+xkWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27D7C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590694577.6276.15948795980950053960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a0cff276fd9d7d06147c66bbb6383870c30d169ce7ac1c0c7fb2fdb679d409
Date: Sun, 04 Jun 2023 19:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685906945
