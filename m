Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942B87F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07A01C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686627366;
	bh=Fb0iNvgleMgvAA0x9NDr5dHYzO0x/CAdbzH1ceP5LbQ=;
	h=To:Subject:From:Date:From;
	b=ujmLvh7RiN4j+Dtfr8sYdXPUaz/Bsimjb4HgIrzwxR3A0S3WlM75yf1FwIThTmboR
	 fx2pRGgdgnpEr99LKCZqTWVzQ0P1CB22qI4PGOBSSDqiVutVaz+qtCj0+kX1DToN7o
	 XrVbh5K/sfZc5cUs7CEDehTPoRgsewTkjlIUr1Y9+q36htf2zrD78C3YA18vDfsbcl
	 be164Rh8fXpHOV9SQ8ocMfhwjIU8hUG6+3IcoMPM5E02yMmpRiICgKM0HddWuRYB/I
	 mR34Tgeg+KUsN2wi6VeHuGIIFsNRV3nCwnDw2EhAiG0HweH03TBTtf7KZRRhktvu4V
	 1nz03KrIxMvbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB8CEC7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662736587.1006.6857248351016337752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968d538024c032ce301e09a96fdbd62835846738ceb9caa583aee6a01e016750
Date: Tue, 13 Jun 2023 03:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686627365
