Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EB17E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64A1AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669080654;
	bh=p2FWEvcWVwSiXibPuNjYMqAJrhFrZ4uxmKvS/AfoG2g=;
	h=To:Subject:From:Date:From;
	b=AFc0CGVETqUrM3ee26bpNTGrf6amMax3fCMx6tmMqrjbGRDAtBfCnxZizEXKN6yk5
	 3UwaMOfqh7Vb/oGdOfbQRFcOHViX9nSlDTIW5NR/hqOAXe8c9AsqcRyjvU/VsepJDj
	 9ku9sARsxDOcWFrfOd6fx2QVPLDRk/hnI9lZnDOIXUMs+RvMxWsZNUO2bb/ZbVYRKd
	 SYxHKfTYYJA84dBd0Wp1+z6m5BpdY1PttqgvWW68eeUOPLtP9Sw9YFS29Mrfd5HbC0
	 isKEaju2CLCWUl7sy7dKoqyzZJWHg9OVwqDM3ww4gLJqLybusLuvakdEiizu4BX5kf
	 w6YINFTnBhCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF1AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908065431.16582.6502298961179125159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf690192f2c500b8f3031088a6dca5af323c1240f59e4cc5c2e693d3a9e4da17
Date: Tue, 22 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669080654
