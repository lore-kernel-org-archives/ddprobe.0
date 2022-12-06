Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C074829AB
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA9CC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670322054;
	bh=yEBus8D4tHnAJIE0Z4IqXIfNXu90D+dI45Ul6v3UNpc=;
	h=To:Subject:From:Date:From;
	b=DM/YrV9sqjVCBTb0+KdEpJ70frJG9RpDENuwqjtbGL77AZW0+/wIMm7gal7ycYQeV
	 EfbvId3SC/xWVk96PCvZJIeQAr9bYTtT02Eika49NKJplFByEwuk6vpFUpWP5QB6WP
	 f/8E7v54hnh+6I8ecbz6tdXAos0SAd8tGHQVJlBD3OaNVpDHglvptoik+7zULlRtoJ
	 y1g2NDEg9Yv7yBtMUDV+qPUAOjGG7yBajd3QCDQ8Yar1dibO6dLhxn/e03ruc9TTYG
	 HWVbojAFG7mKwOj6hxekwniJT9WZ9LY2DOPmubrjN+82cEZId6kEts0WAfu20CeRHt
	 Rq1T79x69ptKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5505DC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032205434.6172.8478527741865571020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0dd31c36872e24bbfe27cd07a2d865f9314a0330c008ece53f7460ae52c0a6
Date: Tue, 06 Dec 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670322054
