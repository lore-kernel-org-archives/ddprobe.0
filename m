Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69456624
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1894EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675990326;
	bh=hEjSOjY21PQ+dtogOCGM3lUsgtDz0ELpErW4tAiL0KQ=;
	h=To:Subject:From:Date:From;
	b=lfWUXm+Gt6hYsQXahc8O0JAduncLzCVgJkpehfCeWu/5y4/ni97dfsuOQ4SHaEM63
	 +YPXj0WvHZ1b/SpOXHcEcD7/RM7N40FGgq2pVUwxpGOomC571oZtSz5uIIRSqzQ2PX
	 HcEAn7128Ij8ha+WQR54CeSjyOgeizWPu57nFQWaQG+T+UFzxk7clv/W9XaPKAz/k4
	 WOndtArTgSK33FS6bWSsdHmAOp5B+ej5pQ5ec/vHv4hLdzFyrqySi8WnrKqH+RHtj+
	 6iFJnVMjo9kQr9LCZPUAQAuCP06dR37LMWyc4477fmHIiN7xcfTiRTtO8eKadq2SlC
	 nQtGxcP9OM8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF1F4C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167599032595.444.3273043367995549796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce05fd010b55e63f034041f84ba7a038ec5234b030b28b8976369f0803e12826
Date: Fri, 10 Feb 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675990325
