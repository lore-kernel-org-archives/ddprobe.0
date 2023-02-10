Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4734F29B2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D78C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676042646;
	bh=rldNk8cIZ1U82Z09VEJRa1JCxl5U09nQzd8uXyLEzhA=;
	h=To:Subject:From:Date:From;
	b=TuL4vWQb7+Ad/ig0AiJJDbXQcM5d+bSFQ2oX8dLZBSu6tcuhxkEOjU/HZIaIrxuK0
	 4yDleg/PhPSni6mIYSue/oYqUqyG+QFmKKMxN525bJkV9bXtHDqPM8ioNsSTNmEJ/v
	 uHAtQdmum8n92lDNWNhZrIwJxyHAh+1/dxffis6dgBh1irNRR83HwD+gQSkAOp9TpY
	 lOQLoW6vhe3FyHb4K+tbS9yGUFx1AcxrT9P86JeXIF3jTBLczAG+IrRaJNtQrRHqAH
	 i1714+9N2pHrplQLWLuhDcWkOtIUut0zVkxnXrx0bx17v+1k0RI/OjwKWv7/2LkcD2
	 GTUQx4Ja5OdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE595C636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 15:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167604264583.578.10959859411845945715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad512a940628832aaadd1fb07a2e05c0a965d1782a9cadcd4a12063c3254bea
Date: Fri, 10 Feb 2023 15:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676042645
