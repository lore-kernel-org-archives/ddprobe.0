Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700D753B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35C5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688828828;
	bh=f0yZAMcpcLUW1mw34EYgPj2ZFxuRII7GIrhB7fhwWm4=;
	h=To:Subject:From:Date:From;
	b=Ag3ASRVJWeKQ2Xt76ori7nP4zZU8VzgBF9GYG8sArYXJjCak/oRssJTxMHF6HNWr6
	 LXAFiHq9bdahwOvHFyXOMf8dJToRxnl4K9+rZsBKgxr4H99XL3fuo0aDXYFY/z8YmW
	 M16+NgGHob90zgDzruzy5pReVSezDvdcoRhatcbJ7RI+zKNgbMwppUBANwc7rakgcR
	 wvJE5y1wSP1HNKCm5ydYll4KcLFCFDvjM+ngPnHAeu0uQBCedBc8to22A+SQoEGyL8
	 M3Jb0qw1FLOGg46htK/HIuVhz979MCfphXSKwT+yt/DwQeTQx965q6RQ1tzr7JOZ0T
	 yr/naSj2CDrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5790EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882882871.7143.7331854121910613641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e3a5fd57bb63bcc141c1bbb4b8be2016a4141740c9a924740cab945aec6abb
Date: Sat, 08 Jul 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688828828
