Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA17817D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69701C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662444053;
	bh=ESwFadJnPAn/RsfjChmiDQ8Kl1LT1OrlfYrJRRb5FPM=;
	h=To:Subject:From:Date:From;
	b=pdfZ3kiYNf86lCWxiEWTvy2IFff7WdKc9fi2rqYuuvRBeppspJzYdKdyLugY6mxa2
	 ER7A3eI3dXt3ZFEcN7w30uJlsCg7OPpQ5ba6qZ+iw0ByKDg8zVj/jDrUl2Aj/w62Ym
	 TIRjJ6AOn5vKGeEteau3ksCc3ZYOS+0pwn0Md5OShA/wi6ZAL+A3SmbRGTG1+neMgn
	 1jBO+xOuLh5v9/MOqUw74bQEfi2rpEDOy10VADQf256Ihcau61kQsf0re1Y9ml1yJ3
	 +Bpq/qRxT7ynTMSyuMnsM3tQCrB2Z8sByLlP435K/H1804/AAKpHMN+52uMgq8CJtX
	 Qa5jE2LOzq7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D97C6FA83
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244405332.7889.16831236726546300075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c301ac9311a5839aa014ad7290e639850733b9dd2e6a0359941d6d1d309143
Date: Tue, 06 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662444053
