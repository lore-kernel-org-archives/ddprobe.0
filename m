Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA344438
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C53C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664923853;
	bh=GsVkS7ld9InKTpNfHn76yUYQYFF9Frw5BLrWByo3Zd4=;
	h=To:Subject:From:Date:From;
	b=KUC7iQpCvHCNBueaLCfgrsR+nCpT9fbP4Q6WrnLkCZakrK1C8R77LxliEh40FVlNH
	 9NOlanhk/pDZFZwKpQO8dctKSMwL5Pmvp1freD0JTkdb2S3en7+PZvxOXcWoQuvraE
	 TbPUui6AYPZ0B8LORN3fly1Kc3LfW+GJzs0X+juCiO3fzp7djQiKJ1KViR9OWaauVs
	 y6VB60yTFyFHnawCUiL9h9aVP1LBg/iw8XByLk0jEAS/dQIswfsYc0DdWgRj+Bmcze
	 UBv8aEicAfnha0W3H2PcP4h4jSTMPs4olW/tnCyjgJDLdmZuw/S1MvIdhH9mT/+zX9
	 jsABzd7mfnWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537D4C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492385333.8147.11355844171255201424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d925b425692280d29de02415c07536e5f1e1aeb37276e8f1da8dccbf30b5d10
Date: Tue, 04 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664923853
