Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099AD44375
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCvnDHLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BA4EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703674696;
	bh=fQksmF+dNw87kjy9ZVyPSiqOwsq0uK6EWPQbsi18q2o=;
	h=To:Subject:From:Date:From;
	b=GCvnDHLbPOkqp2YKPqoyfaq4bDA1y3xAPV0204ytY3Y5W8JkbZHrm0SgaH2beVsXa
	 /G8XpDIxNoePk3YhT7dzgQklpGCcTmMIpfGPXikalgVGKbleZP5Y+1DSodKBXGgxPc
	 YYJluqVJ1MA41c8mKpLIvYmaSthxQYRMBOHmHFEVbE8W/OceHqRmYlmh2dTWJe61iN
	 RI3eF98k/PJLMh+69NoehG9mS0il/XLN5Nhrk7NUK0iJpKmm74tA5NE1NepEWVQGZC
	 I0+9a8IMzZP6RCHlMB4EPlcql9vAkIR0WxD0VY90yaa+V2fN+yKypNSQQgod0ueuBT
	 IxB8274r39+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EBC2C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367469644.3473.9531697231043445604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff21101c0145681584a4247d49594952f54633d05bfd77655443be5e15bd597
Date: Wed, 27 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703674696
