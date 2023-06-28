Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D5DA23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF8DC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687984388;
	bh=B3ycuGcIBmMwgUA/FHO4+vHnPi5/N/Ac38QZi1QrP+w=;
	h=To:Subject:From:Date:From;
	b=Lu8bZATvGq2W4mYrmSPLidrLIbtIm6f6EMm5J4cgz4f+Y5eUp9U3aiVy6Lc4NYh2L
	 HAYQD4Tn3S9ishqGv0apT8WGau5oRWVX33Pwr6zRbjh1bPgZCR+Ncq1wshrU8pcjQs
	 VguuwA23nic3BpXydN4AvPi7h7aLuqVyOXB/U7ucfMaJXu7ZKLfyafi83XJ59iE24j
	 XV6v6UCgJzuWXfF4uvnUzIgwCzq/XWW/tck5qWGX7pxK64EMgJHlPPpVSHFMtKnm7e
	 BpSzOCTBKPNrOwBMCX+UXT+96xTRVAO9VOoRwU8340wKBR9IYl2EGt238k9MpgEcPL
	 MQNI+sHD+fhDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDF2EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798438876.6221.4117317757409987257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca421c258df9936306d8f51040af7399f79a743f6096ff0fc1587937f0ea979
Date: Wed, 28 Jun 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687984388
