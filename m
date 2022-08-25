Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD8C1FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D91C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661410852;
	bh=QHY7P6eXyKx4+I0UoeijiX0H0ZDey/RtxE0SYQGh4xk=;
	h=To:Subject:From:Date:From;
	b=krcs53xMQczsycRW15hI9H+m0E+WawAosHj3dddhDWIWksywGeWHzbE92ggKUrf0Y
	 cxz/zv7VPjv5qbaUz4Fy6juiJtXUq1r1tuI/e9NYlAS7+xpK2Uq8dm/+Fvt+2NW3+c
	 pfnCkzkePwO58cbIkYnhaANs8fXEYTqN/oLgp+lB8s76O0uVrrA3s+PI8+vvWEsowo
	 iBCMi3hCsZB/iJLXYSmTk1sO3ziDrDHl9fRI4IsYeEOCbZloTW8CfERKccR4A5W93+
	 Mv9oNR5AYj8VAuf2kIwnsRoS9Zjro+VH2goTaw08OyfYvUCGuTQjQSvTdYmlmvAEoD
	 51NYMqhjCSJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB84C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141085236.17105.11112950789658404508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4559ce3902e82eb243650918d5f63075f08d3d9a9fe16c7dcf26216ecc15b05
Date: Thu, 25 Aug 2022 07:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661410852
