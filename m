Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3664D1C08
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9136C433A1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674642185;
	bh=EPNaQSVxHwH0K/jHvWxKhWHCnNAQglHw2zvbKcpfCu0=;
	h=To:Subject:From:Date:From;
	b=KCUBGVwP+M0DBcIBxoF9xRRuiM/aya73yxF1J8UdeQymVkEop9NltOBkgJ+69lke8
	 6qTy/382AJ/tf8hLh51U8U7T5fSxx5srRC53KIf/nU1bP+l4nsMThcR6WpvwHFOj/E
	 UnmQSYbdtmxdCsXVfyVdgD6WeoJ/8HvAMbN8MFcBSWuAx01e9LSQOLaLZKA7J99uYL
	 KpM+slzXmXfBCJ49fEylA/eWDhgjQi6Vu4NxjpdfYzLdIpckNk3BNhL2OgS5T5lvIW
	 9DvMs5d/nsSqK2fjbFtxnCrQ5Wsw2nQhF821ChfRKfu4H8WLdyuJgtka+cFrANlwRy
	 vANufcimpdUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA83C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167464218576.27426.9280719709479575450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90dd28caaf0a3bed7e486e522438e9f79a7fcd5a4f0e294230a0237142540e21
Date: Wed, 25 Jan 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674642185
