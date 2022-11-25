Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D114815B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74170C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669337454;
	bh=bRAnsZwqmhx0KM73g2wyn06rgWjiB/0ezB+80DAvuT4=;
	h=To:Subject:From:Date:From;
	b=RbQMOhDq9kIF0MbKWOtmsWBa9eDvejvh+vuDXZFp8/OL2Ri4C92IgTUJzK1VwxS6T
	 REkIRzaPQAsaTpP8gKiq2XtSKR28CbTWU021KwlFUoXH+Y2aSxAWc+2X5m8zS1Wntm
	 C3sh899HPj1VeETK3SXId7CTqFddkqkJhULgQ8VOCMXXxZvwqfW2R38VRxTi2g0Nsh
	 wwgJ+KzxARyoU0Vj+JHwcql8k8pOtFwwL8tMxDhyCRqGVCqJsETHusKYWAQmUP1oYr
	 q02Qp0XRVTCEGrHC1EGsm1OVmoDQJxfSP7Wli3G7tyEeGwbwsklY/AWPwmJjCyVe/M
	 DtfXEBUaa6EPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C6CC43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933745432.12002.5538993189821153477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e8dcb41009455160bd9a2eaac2ea2275dbb100530f489a4b8abc18ea90ae05
Date: Fri, 25 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669337454
