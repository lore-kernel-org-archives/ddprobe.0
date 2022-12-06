Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E312A20EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A056C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670364654;
	bh=JrLj4qmC8cWx4rqftblIVQfb5OY3EF7Gx/AS8Osz6QA=;
	h=To:Subject:From:Date:From;
	b=AAaa5/pfOh7FbUxYE2kXGjh6ofLFuUFfALA3SxOKyxsKaSdKWO0w5JBR7jd9RsA6W
	 G1DMm1iasue0ex0FDKw/utyN98F+qoDwU5XqI0VjsWQvaRqr14SZJ7gqcMSdSa/T3g
	 Mn8m6K2Enk5LAqif783NVo5+4JkU4E7CookhEW5m/etkoQVgBt41uvpTRtqQBLWblW
	 IJzkxMHq9OazKbyCeYY2nDZOuzIoYvqPFeQ2XAYT8vOtKS80DqSrr8Sjo6CYGWsfQ7
	 WoFr86IZLza0YstkINf/yuvtssbN36yBhHXNLXKOoVf3s3dLMpqCy1+sBCVsalAqiT
	 Qit/tH44VkSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59993C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036465435.28416.14626676865730978913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280d62de020f1a12d46101682d8563e2f47ed9e3fd2a6e43103e747123d3c14e
Date: Tue, 06 Dec 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670364654
