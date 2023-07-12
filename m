Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCAE14F91
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA575C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689186548;
	bh=TRxKRndIKyKwaXUE4ifwCcz14bDyrersJ3ZoEpbl5jY=;
	h=To:Subject:From:Date:From;
	b=rET5Lx86GPHl6vQCy8oGtCizJxsloMGWMtQ8dMbH3s5YvLL9LmHExQBBulwoZnUTr
	 tkwfKPUWyWRUpyNh6Oeg6N6Wta3HKWYZkZ0TVQkN/NGwD3MP5Z90rfwerPPsI01/9e
	 qXFbSdDfdT92cjzgYlI5PvrYtwOvwxw1FVViPrMJZNBl29uZ1L4N4wq4P+7pT/859f
	 6TyVQAjOHt92QGf8D4W7mkFgASFIqb1Z6ViEEtvCtqN73S20klMssXnNYMmQnfO/Yq
	 O6r+Cia/Qc7vCs7XtavTuGnnbmaGhkcGHqyF7Aq9rcMZ6GV5Gb6sOKVA3p7BYMDEhZ
	 T7sdqARLTOUzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95DEEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168918654875.11663.3552992897710073014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392b642a4ac3dadc590ca800739b7b3612580312796e9a95c713467b8817adb2
Date: Wed, 12 Jul 2023 18:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689186548
