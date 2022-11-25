Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BBF846B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2E8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669406454;
	bh=0pg1pAtVEJa7urAyAzRuQ86ZwJlByRjKx3+Iliz05bI=;
	h=To:Subject:From:Date:From;
	b=EexyT93Ej2Il1a+52g7wQbZVYFqK681zc4Fuq6YkDEx3YWVDvspICPOEfdhGQ8Zp/
	 wWXvlh2GK114AgUUjf/zlFpLlDNLWs3HVgQbIjzINP/NFEkq3HYXBqYghAWL1MgPmt
	 /hydY2nsDnQI2AdO0bCYCggj7/qVeo7BMGN3Shorz6xIMnd15U9dQKo5EXedxhfozQ
	 lLUci6jg7XlwHbrd/jFgZPjweZD4EU+fXte8MbKsI933EZrQJk6KRVQLrONivEMbG1
	 Ys2+Zn03sHO0lZwp+rAusfWOvsZnLwmCbQcUKT0Qi4V5rlhC6JqjLaHXiyhppX3MAh
	 C3h67QiCZmIrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E5BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940645432.19071.15662299190232906590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dace2597658372a6a263db6ff92f4c41d9037669026b93c4b9019fc87c6da330
Date: Fri, 25 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669406454
