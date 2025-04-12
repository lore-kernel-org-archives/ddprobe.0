Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AFAA2D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744438194; cv=none; b=lyEfSOwz189jxH7GOBM86s0mn3C5kXWZcUebT9nJDuRF0/EdWtucPuZFLtjIdAAUPMKWGchDGbbc+BXCru4/4jc7Qn1WzP+iRQVzCl8pgfGKL1wNLtWtiAgSlVlDCcethpHRY90JPJzbgrFaUf+HKUy60n+YALLt2PDQbmPxfig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744438194; c=relaxed/simple;
	bh=tZcnxK4J9Sor1dDEhkPXHYYZqTbAHhefGcTmR+V03gE=;
	h=To:Subject:From:Message-Id:Date; b=NWX08tJPKCmFGYub+ivJ/aosqrZlFGJ+uT2KkI4VxYC4gnm+UwaQQzA3SXBBQjoz6NfChNpmJEdkVrp8/GmC/f+EX+KHLNQZiLPvZ2EN9sg01BIyMTi0DSbYQkPzJrb6x1sYavjlqPIqz+z0Fre8Wh/W/w1r1LZOTdFOgS+HMcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfnYsFLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfnYsFLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8439C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744438193;
	bh=tZcnxK4J9Sor1dDEhkPXHYYZqTbAHhefGcTmR+V03gE=;
	h=To:Subject:From:Date:From;
	b=nfnYsFLUrFJQAeHuuC3jd4YodbWJigApqzCRo/4kRL05KlHgTvIfHOeoUVMqjtIb1
	 RpqrJARv4eB+ElyZIFZVKiMHYYG+KD8uEn+POREfM8Aan2dCUckUrVnNGmz+CQIJDo
	 0Pc8YGV1uwnw9sAhqyTEuvPBIcZU891CKzDXb27CyawZUIcf8gJvlvoE73AxoiwvEg
	 g/7pHnO69raSC7jSZ1WCPwQCD0K88u7TgMi5poKlP8Z+y0vG4Bq2bKP7JWgEE8zclE
	 oUOx4zEqUT1aHrdL+0J6fDb9vsLHuWGj300HIgy652qg3uX0ueLyXQXMDc8zYuRYAf
	 e6a2OG5fe2iwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F7C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443819357.29246.10877294326402034105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf0e398b911fa59c93ef4169e8407355622066926218956ab33b767e2f56aaa
Date: Sat, 12 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744438193
