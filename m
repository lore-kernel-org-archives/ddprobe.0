Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB6FEDE
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E559AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692117188;
	bh=Hc3amaYbBZkCMmwBlaL8G55pDTStcxeA6aRs5+GMdoc=;
	h=To:Subject:From:Date:From;
	b=K/JIWQWY0KcDsfXaPwbHdsWk3EU2FP9URUtcMd6vKoVf5Aav+osxscLoTNnKNjkwm
	 8DwkkVv5D6PcT8iq9vdR4RAM9opJ7aB13rUCpvfh/bWeR19cXKCfOOE6aWA7B6Shcx
	 ZT9HpBbebgY98De296vUkBK/ZwX4P2JJ3InrNd6amBL3IAz4Dm4n4yhQxsBo0ZGVbB
	 EUBYpvnQE2KbNsJhKrZpMFTpYVSZ7OFu0a4f2o6iSq7Q5u5NBSot/OoV0dJ8rQqLqF
	 Zx0hbfaIcMWA+NsOvu85QyhCqAtVLeNf+e194ZBnsg73KJF3ngXiUzH4BXeKvM8C4a
	 lTGRrYSuixunQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBD1C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169211718876.17656.14984432516162567303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242bcc3493cd49f6d374bc4f99231212269ff526f9b7ce7b1d88e5f6dda9e64f
Date: Tue, 15 Aug 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692117188
