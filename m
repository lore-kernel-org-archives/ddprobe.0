Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A1D7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF42C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690661528;
	bh=MaudUu6xUhNj1Yd69emk+pqKKiqHwA/YLKgLTLZl0No=;
	h=To:Subject:From:Date:From;
	b=gyfBrn/Q75AWg0k/8u13KAU+ui2TZNHn3AxhTbPc1UMz0xy9xd3JUx7qjHXhgh4tb
	 1mYYIV7oaEjMrKpzCSv6yOzvIm8GY8dO/DuIixhunFhy8mRWONkYrrWAdwO/0glHNO
	 f+W+OA2ASWFiISqpsYSyEL2naAwmN7ICAgQDCLTy10JoJZmoGYT53VHfkXBmCHeuau
	 isBKstKalvIveCYjlDPrjFTAYDrFATfK1+MrZVybQue7Ai5z5wPM5d3K+2Db7+k7W3
	 TARK6Zl7GinYsNLGJbp4BoJyhf+fBA7TYbFqgbnx8SinBuG8FSin7CWj8RdN5uyN8G
	 NnyZLTbB54s1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEADC0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169066152868.31235.4296351222915345082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b34b0f4c58ebdb245667161e02595f7d9e0574728dde80bb6954fc9863217ef
Date: Sat, 29 Jul 2023 20:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690661528
