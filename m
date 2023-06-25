Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5293E6AC0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7545C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687710188;
	bh=B3GoNj+cbdFgaKS9oJ1KqQX8NATyMBdtAYc37LR9ycI=;
	h=To:Subject:From:Date:From;
	b=VxVcU2ROSB13M5ePpg3t4q8+7cZ5uPA8WeT0a9UE/63xkuh5xn5Xxte76dN/P0SuG
	 6rEtmLGl+2b7HNdFKPDQXaA2fVIdgDNGzWo3Cy6ZLz3d6N2TEDEG97BeNfT4Q08W7Q
	 DXoVYxujKREUQTxLv9rIei40FUloQzNC1OKQJ4GGpw5+Onz35EnCl4yu+ii5n+4nCy
	 uhdh1BACcTCowpCq8s7Xf4+K9tZgg24Hjxy9Si+Gt4fmhO94pTEK8LTV7iJCJ1D9VC
	 zvE4KZsHr20wwk+fBBnZLNYJzp6jmxN5a2RlyrP0EXxaJrq1sxPHnn2FzY9vdAJllR
	 WgmtGwkGphC9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F7BC0015E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771018877.31079.4798326630570820699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48c15599fb107a078aaf98146d2cb1d2e927f5a8ee9d975857c60678a3f9119
Date: Sun, 25 Jun 2023 16:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687710188
