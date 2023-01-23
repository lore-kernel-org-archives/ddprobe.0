Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1513224
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB799C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674492185;
	bh=wKLdnM2pxntqnuLdvdXMP+QHlpuj4QMTWrTN0DrVBdQ=;
	h=To:Subject:From:Date:From;
	b=Tut7Z8r8W2aZBHQo02INvhfB33qvZU51P0i88TmUJXmnk5s2eumTyPmstHUlOQ3Is
	 lrMWrm31zsFRhHXt6NW3qQbv3JTG9OAP1pq7aGytbQwBdwsYhYhE8ANYA9v/4zR41z
	 a7pB5ZM1sgMb5SjgL6qLnZihSwTuLKJZeMWz2ugzP8jxajPmRGCOn9kmkHcyrkmcbY
	 Upw62ghaj1ZCR6C8aArL+uQX8qRZtNb6FnCRQ9ElOi55tbS9CmHTB48wWd89bqeHmS
	 k5OVB3OyRwzi9rwj9kYJFktFPlc/WP+OOvYi1Yd0Nj937dcdHqP88Klec2VpyTNzQy
	 /FlxiP8T+paQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8E7C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167449218576.1224.17228611790910032846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd861074c29b798c7615f2999249d30fe81697d3728c165ec3cd28e11b262e32
Date: Mon, 23 Jan 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674492185
