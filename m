Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D12F363
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC99CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684541285;
	bh=eMJfiEpJvsAEoo6GCI9V42LcCMfLWNb41H3eoMv7rPg=;
	h=To:Subject:From:Date:From;
	b=b9dRLQazOjSsE+d8h+Yv9h/nEdXSZYXcQkPzDipZ9qnvxSaJtsu4pdm7a4x/7Cqq+
	 c5r8q27v5HSOuvtvm2aRtwSutWcHmp/uBXFW56f+ajKZzq1X7lhdMYKK8c9LcLKxAv
	 ZnC3VTnRZz1W+4u1QnNaccLl5xcJ1/vJ8AJv9KiTYyj/Fk841BlMn7J29/qLztueq2
	 N7BG1Z8o7iMs6QEiP8MiAPfybr3wrUB/ZelaP1/gQPhuFwYh9we7j/9/y+OO0xSsUG
	 ainMf6trP2oopY08xvZRKawboMoiY45hmGSW0uis49qTO//oNOF8xIJU6gqIYNtoex
	 duEJ5vbt0D3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B752AC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454128572.4324.10013802239485167329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16326f053a26add5672a9a38e08fc236051447c2911e57c6b1fc49ba305c9b7
Date: Sat, 20 May 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684541285
