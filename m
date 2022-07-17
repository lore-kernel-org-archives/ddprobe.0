Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E3362
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658018212;
	h=To:Subject:From:Message-Id:Date;
	bh=uSeHR0UDxkly9v2bEbojRJevuuL2gThe41Y+1xe/VpU=;
	b=C5n1wqJHebPlAsDVnQo8RyhMIhvPvEJWJ+Un9DdY3cn05FvbDj7UMDgZfenqbP3S
	o1qk1nRccGZbdaIkrkkxZ3IsCH4SBzqG7jJG4arkuNNovDZ4U+ETN2w3taGd0OwkSM7
	JtxYEcbyTD/oG4NFSbk/DLOdMFDh89FApPLAehx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658018212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uSeHR0UDxkly9v2bEbojRJevuuL2gThe41Y+1xe/VpU=;
	b=VPdHav9uXwkJtQPrVBG0FxDSo1qVxZgp41ziv0NJtSNoHbx16GS4PVeBXtxsk8Eh
	CVAxfJMkK+ZjbBcfN48whWZ3oPamDkj+7miUUcENcwOpR6O1R+mujAqWlTqw2naiK8E
	zUaIughSuuQ6YWlsv3YHCnERWi8/rOaH3smbW2Xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182099629bf-90759d6e-76c4-4fa9-9ca9-758028d16db2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fd050a73d2de6affddeb5ae446514788d53071bc2ca1a390914df01e1530247
Date: Sun, 17 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658018212
