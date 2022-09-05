Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7A24C7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A464C433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662416453;
	bh=SKZxWuYY6r5ZimY9CbT9C0ZcOo6LYUeljwe+czE+vBc=;
	h=To:Subject:From:Date:From;
	b=HzWuNRQqjlYlwWMUdNHc0dHzL9XPsJf0+r3N8LpyF3nT+wiMaTMSN/5oUDJV/k9fs
	 JtM01IbNq7eMUz+aETUgv/U6izyi0XRfYGrD8dUWzeele2n18pUoNTvCns6zDkPXWU
	 NmQH7A6kU/FbV2j3KRBeftK4DZXfAVd+If/6efTUr6IwD045j41zi4d8xoLMTiWO0m
	 QVKVFDTjbALYwYC7yox/nM29jmizRbMbrucqvKmwVaqEbn2xOGtv6Xckh4uW4k/RtL
	 ccB1we8rgEm/s+ulAifbpEvIR+ZL3RGnEGg6X9JBG0pTy86zO4nPnCs4SIQoFWVYL8
	 cu0R1vM01ReQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546ACECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241645333.8429.18016444139317802271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7f426f1078df81470da519703c8521de1e2fbbdfc2c4ac94acd6959f3c0779
Date: Mon, 05 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662416453
