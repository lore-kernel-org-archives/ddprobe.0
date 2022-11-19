Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61B63C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E21C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668879654;
	bh=hLpXMH+V+IzX9mt565EpLlUBE8Yhe+LHj+mGAn91V3w=;
	h=To:Subject:From:Date:From;
	b=jCzcUM8Dcu+LuuiHvEWnxY5E1soBtF2mMvZQLdZeTd7KNFJrj71i5LWl00kWV7iSG
	 j0bDkM5EuTlOW7ALAMAWHLYmQrW57LHKWtLnr+nbGnjgbnPefl68Xyq7MvLQ0kNK/b
	 QnYlihreSmXzfATvIy3Xpv3eto5j9WFO3pp8kmihHirvQGqCMWqlCbf95doMb5i7Jn
	 4MhTl/Ve1Uj7n5u8DGSc2k3dAwmqwu/Y4NnlKSqkq5QegfM41SFHmcbgfowm2NVQlr
	 WJnttjkkzmAfEGyC8q5fLts7yWXn+PR/mejjRrIaFNk72KF0Xc0Y/ZBg4f9AmHqU0+
	 O4BW7fsWSTJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51722C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887965432.1883.1762054538855963855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31108cefb38b757dfcc82dbfaa2d6ad15144c705d6865c324dd751dcc3661ae7
Date: Sat, 19 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668879654
