Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C014110B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F093EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681695426;
	bh=S5XAho8WrY5Kv6zYXO1c7aHE+EGAptb6QvpEB1bdDHs=;
	h=To:Subject:From:Date:From;
	b=SSwK3RwNqSgnwrdKsaswSCJ83EmrfNwEy4qqBhaKS1WGSnal1NNlbTmqaWOt4MdJ5
	 ZHA2citDHK4jSa+4b5syRrV0N+3BilXli8J6owkjYbdCqEbQvPgsvEHdZbElqK+X2I
	 Za2r2S3lw+xABIi+y4xKTlh8IbX0X5yXSqiJdGUvGTZz/DC4EipCHrlQdI5X8b9/tu
	 8VODC0q1zjB87i+Dcp4EvqdDUJJkJN/DVEaaw4KQ8ZwVoE0D3ALwKMO+jf0/dgQfAU
	 71orvmemwokqpzNhqfNymECUQRYkhpoPV2BKE3pZ34/MSOOY3ulSE4KluyHWaSqV3y
	 fUZF/Hlk9mkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C465EC77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169542579.12494.18341647459097758870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44401e1d82af779b0b7ac5367508f58eba01f8cdd91f54a396392b558cdab167
Date: Mon, 17 Apr 2023 01:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681695425
