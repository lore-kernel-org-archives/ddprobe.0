Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F14E7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5508C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681474385;
	bh=5MlZUDcOy3pBKDqt4T2jYjxu9nv4kUHwqzUVgPPv6Lk=;
	h=To:Subject:From:Date:From;
	b=da1nsI9i6bVDyoCTlLero+DVQwBvHKzVyvqm06higwkGe3pm2gxHmca4aWFWHryv6
	 kmFAzf6KUP7FM0+2xRQPfWsGWBMM7k3zsI0y2hhTuEgzLl/92dlloYVvG00LwRn1VA
	 7vNHMQzYGtkKbiF5v8wa5tWOnVYuBLkBUUqHzhKNu1GtoNmP+Xl4u8HkqYhn6bDWKH
	 pLhxL1Tthsk+EXTDr3a2VzoTtliiF4y63NDFEHbSTqIMMb+yALE9Wt83ZAggbfVfgt
	 hWIkmLIwXzqemZ3+44rxjOcK8t19NPhIsGRitFSIUiChcvpqJWw3wev3ew6/FL4Rqu
	 Tuy+dA6SR17qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEABC77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 12:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147438576.29514.4746574798824800923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e956b13e58c382ebc5c92b0d986ce54d3a6895662dd71e7d821d8151123ced
Date: Fri, 14 Apr 2023 12:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681474385
