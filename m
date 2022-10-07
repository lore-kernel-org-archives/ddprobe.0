Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEB9805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782E4C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665114653;
	bh=N0Qo9kpiy2hq2NPipAKhm1hPtax8Blb+ykeoqMtEa7E=;
	h=To:Subject:From:Date:From;
	b=hxxgVsZYVwGSIuGNYOB/2d+zokG5rMPfX7bLIGijmrNut/XE6TY/wrMD05/X9JNmQ
	 8zzwSGoODOOoN6AZzdkG2azS3c4xVL64X26sZvIkvWkhEshzsHYwtbtmbSU2mDJozt
	 XU5lNakYzwrQQuZ8M35awB63YC7BdkG1DBj4IHJALnV/AXpmqgVPKvBA+qtQ0I9iC7
	 3jdfRuVq0MeD+DA6LRHh1Rf6IiXmQTu4q3ZTqEMjarqJGt3XviIU6MS71GfJLZ79OL
	 rPmAIkNPDHhycKtZnN6+pRgLir6D+yTU2TJGtSI0/ijiaQNgXYzRpFxePaM7n//OC/
	 l5KZtF7hP1Jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEB5C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511465336.11742.1655853644203779665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42897c42aa626683be12522100b630e0bc1d583879616addf0cad27f3983aa91
Date: Fri, 07 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665114653
