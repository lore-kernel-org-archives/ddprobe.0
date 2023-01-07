Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06971C06
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B6AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673099487;
	bh=MrVFS17y4QIgkhNxDAER3PZMHxuVKxR+mfnc1HofkXY=;
	h=To:Subject:From:Date:From;
	b=gL5/XBx/GxvLZdJVMV0gt9cM/SwuBfJOuNTq3nNNRDlSiEVylxzPyVuURZxnRoZeX
	 /smWpbwMLU8hGm4rnd9jn19fRSReU2bwzeJEauzVJ/orvE70tR1i302zv+FMbmGoEr
	 fF0QeO6zOIFV+aZhfvpyQKjOYs5wvW3Px9Rc1KhciQa+A0dGB/KKNCma15G2xpN7Yn
	 /RNO2Aw6UcxK0wbUcuer5hwg03X32eBn0S23gsBx5Ojbb4yLM+QUAdhmyLjQagCGQN
	 YvrhozkhKQVSQ57yC+oExyF+417EmYdwcBmM/Uxo9GmKUhENskxtL7L/7p1dLOCi9K
	 zMrar5CdSSY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687F3C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309948742.24345.798970201708937238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3da0c7e614a2f6b1b4c0b7ecabcda963457fab2a06f7fb93fb967319b8b3a2
Date: Sat, 07 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673099487
