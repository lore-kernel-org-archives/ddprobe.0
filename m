Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66534538C
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC04C433CB
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695116708;
	bh=gbzlY7Q08JD2ODYX/Xs7i2amX7qdnhlugSo48yiw00U=;
	h=To:Subject:From:Date:From;
	b=knsPRYmJZnDuq/oHQw9T5jkIdJzdebq/JGG9zWspRl1OPaaNmWNZvBpXAW1J8EBhM
	 g+qV9HaL0tU2VHnLSWDrcJGYFw1dhZnIurHHRc8nyA7BM/4hxlenL7JVfsyzRRXJf4
	 Fso3pXRPLome5BP5pw9BC7fq+Cna+HD3HudoJijoX2pCpfUU8j+JMhhNEtBLTucCPc
	 uhy8mfi23tudQtgRNlAYBf6HS6dvDzSoLfAM50xolaplpw26zUCpAbZwV9O6uFd+cP
	 VMv2FvD2ySFR8YQh7rDjheIyRxPQagFi/AjzkAUzBdsoSzAa9uBPVTCzdu1kts55yT
	 UAxrqp0ZKE12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B7FCD54A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511670872.1303.5213493137593132405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9e8d468310bf64ce32d2b14ddb62f9772ee7e2c6b933a638c0b69fe5a6cefe
Date: Tue, 19 Sep 2023 09:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695116708
