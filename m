Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2BDBA24
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C688C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671056487;
	bh=ZuS6B1CpnItCfmXSgb+YcUGto8kuktglUHK/PfsSa3I=;
	h=To:Subject:From:Date:From;
	b=dy+NwY38lwtR+ePKjL0uQl5z9mlttvAf6IoJ+PGQ32hCo1I5+z4dWqnfkdEOa3mvG
	 ux4yKtbof+30GdCzfLmxtbIxfardxBklJhA2NxWxO9qmmIL2kvUgaHb4pQ07SIuaqy
	 2n4ioKmYqmx7ticxaOZPaKmx7HFhB0DjBXCHkTp/uLPBJrWhPomrEjJH+2gXNVL598
	 rbVX8PRvf5D5A9tBoekaieQF96I5aGDHyU43meJfaPEksfZFbKuBWMQrVrV0FMWUlW
	 MsA6PDgulhadkaZgRhMq1QXEHXa5GXu3OYIPZHebBLjFLo25WSpccPyskz4h3AkL4c
	 vHFXjQr8ALurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7B4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105648744.9109.16309050813615476305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f51f071326d3a56e9e7d551717f6b956228807c04d9c8c7e195077a10477ab5
Date: Wed, 14 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671056487
