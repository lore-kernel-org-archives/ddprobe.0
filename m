Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD68C09
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 18:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D1DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680200945;
	bh=BJtMYNUNQ22wLsT4CdoPQAQN0C50pje8nGZDRc0MQTs=;
	h=To:Subject:From:Date:From;
	b=nfnFS4WlM4FlrFiZc3PviUowgpwIFNq/FUHm56M1L8UMeyNz187oUlY2PBN4IVcAF
	 oQSZ8/RbQkopUigk8HMWYm2GYg9brGegSEV2kmC94huDfynScOVoHU4b0ktcT+YmDh
	 GvBKVmt0yjEPutZxNxQAnKutaa+OhwE1gOjV8OJz8BF/CD52DsbrdhwPJXGXgrPpTZ
	 EilwYO2evOOn1FS83qyCvwjKVLrZ+H1yJURHX6UJzoYRUe4idHw9V8PlEjLwSYbdOP
	 jpF2AyyDqD4CsB0XEuOb0nSumbcpAzRL2VM0CG82os+foYBw3kL1BX3/KjEictmSKH
	 Hg8U6ox3KNcFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6845C761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 18:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168020094573.31433.2994203018312627456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc2d1df0b70fef8f0772f684fffab6ac40fed3dd3391f8a2506d94107f8fed5
Date: Thu, 30 Mar 2023 18:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680200945
