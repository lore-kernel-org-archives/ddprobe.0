Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCAEA45
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22DEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681464726;
	bh=I9z6YMQgECqOwUUkarKX05wIRReqJATUkA2xHQt9FxA=;
	h=To:Subject:From:Date:From;
	b=a5U+Ta63NvDO4N7EI4vH/TETfXcwSt5N2qUYZngip+r482WZiDF10Q54ER/DdbZzG
	 y5ORqt5ucZb2gVCA0YxE9h3VeMh/z2F4imDQDKOXvq9KTy8kut6vxOYK+fnqHY9TsB
	 RNvZsWiev07hcefLwlSG9hpF4+B05P3pOmxuPDT3DueFXsMwKwSymSu5xMJBKAOEhN
	 nL607WTq70zA8XWj1dwswQ7F86UE0Uq9cKhoMbMcdG53FyGwjs4j5zayC61kCEf3F1
	 8sPXZmjF2IfbCwqSX3+AcDDTA5psDLbCvPkleR+M0d2g4GekU9hQkM15CJgnOqfKml
	 UfVsBuYWKbTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA04AC77B6F
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168146472587.19412.9985295835285657174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbaf52d3e4b9c7ee710cd335f26e45633466607f6fc693536c65a54159e0c9b
Date: Fri, 14 Apr 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681464725
