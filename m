Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E7A441C
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQVHrXWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF17C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703931496;
	bh=sRZd11g2UNcg9jQlnXYDC7fLTMr5x/P2ZpWF0TU4h40=;
	h=To:Subject:From:Date:From;
	b=nQVHrXWOTCI6qsEV0BYNFcnE28DHRrG7Lq9q4jcFXoYNrBOmjFxkZfg0n8YIyegWN
	 fI3BWDKmTiaqKAGDmXudV8x77UYoe7paFxSYmZDEhcwQr3YDDGFjCpTZ8YxUZOgiFj
	 hEZYOfNDtG2vPtnpnQiEQd4B9fCpW4iaoTYeN35fvzdATCGA421t0AidaoiLcrUcp4
	 63fBIsfTVgpRXoQq4OTGjGQCuAyM5dqXvI+rB8EJTUD6p+ROIgd5vOVN40I4PGzNku
	 1v1KsJYP/kJU/aOIBqwqhnShJ+QZWSXIILhjMKCW/VY1osX3TcfDYexsrJnyWwy8N7
	 aVL7h3Z2T4y1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CE7C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170393149640.19614.8909881297237283405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628c67517c4834b893e7bbe8311b942456ffee7399ab82360ad3dd8014c3730e
Date: Sat, 30 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703931496
