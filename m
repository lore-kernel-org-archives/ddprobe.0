Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7711FDD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FE9C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687246328;
	bh=kDe2q4L3D51omD5hasBLkc7ZHyZLq5vT09DNO2AQWtI=;
	h=To:Subject:From:Date:From;
	b=nuB0GWu5whCV7p0R2J6drkMXNbXnZxFLZfMbiNkqezDyRiShTYF3an/GCnRMgeTt6
	 LcUQ5RfTewHr3k1bfQiO882DhxARWnsGHqunXQT7pXA0Qpth3a5RHZLtorYNN43Etn
	 uJdyFikIfXtC1H5q+QNXCJRU9Y1RcBANFs+AjzwSsJNnv1xsGL9wjk0oDOn7Q8ntRO
	 hrS9hoYoyjpI6fEqu7HRDfPCnm8DeZ3tM+lhjcAImtmv+KZzopZXAXtgUKwJuOGtNC
	 s8jcOsQ9OtTKOaa9fjeB8zvHPG4Rs6QGGx36S2gIeNBLOPmyVbH8NRbY1ohbs9i/UG
	 1zcfZcu8uiA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69ACEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724632873.31131.9770628045640095412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966b1cee3f72fa7323444698a9d40998c80fba87caedb99426f83a42dbf08a0b
Date: Tue, 20 Jun 2023 07:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687246328
