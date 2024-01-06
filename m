Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D182E543
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iha+aufl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820E8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704559096;
	bh=BKD3LBQ+TeaA0hilq1+gP6XtWcEm+xIuC6J64S+pZ10=;
	h=To:Subject:From:Date:From;
	b=Iha+aufl5WVeAwcdfSeJeL60TSG+85gNtVw7VqhGI2y6wszRTESvWu2NwgVPfEHff
	 NU3n7Z/Ys7EwFTtuFPIisjjpkBjebIXFMKRsQpu0K5OXaR6PvCPt9uHbYZKNPG6mpw
	 NV5bAVQ7avD3Nk0CNwrOwtkjDUgrYKOMRrDFiG3xtcOy+X7edXAlUSkhEXK3oP61TM
	 8fuHlmb0aWBhgyMEWcwHwpPwOVWiK+yVl8II27BkURjmA24+u7eH22zA3tF6mkN1vB
	 HClZ06SqLg5yEMjK0zePvW7asRWFlVfD7YGVHQ5ghuJ2O/8/soX9m9y5LHmz2NawX4
	 SccMFWAOZ5AKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649BBC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170455909637.15024.87759293279979418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7411daaa706af9f1e65c26b21db0884e3721f0c0634d63779a5aef99756f2573
Date: Sat, 06 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704559096
