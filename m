Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19162560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74086C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670147454;
	bh=yRFlFMrp7/zsdLdRU/8A8uvNHB8Ua8LF9RhJvaXhSNw=;
	h=To:Subject:From:Date:From;
	b=OZNrzKfhjNhaiwLpzZn1GIAOZeaFPFSgqkmUTWPvHBxqXYNmR6G9mFs8Yp2CzvBrG
	 SPtEewDm6P9Lps7827N2A7H6SHZLtDdn6DsWCXFtKIWPnc5QFYZ+BUvsqE0gIVoYt7
	 r5CBC45L0ueK6kaVXL2ir1rS+8wf3/exl4Q5/k64lR3SgJ8UvscFGNy4A0s3N8xDwt
	 oMpdggl3a8ftViYcOnCAOawI4Qb0aYrxWVDpfLuu+JrINoi/IAZE0d9j7EO78ud4kT
	 MBDvlvwhgJ+HkojHi8dqXZtwEkholwq4mnvXq1UYwB6FJben3OjVXpvq800PxZfnq8
	 MdRfij0VbKY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598ABC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014745434.12238.6293683449702991527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cd5481ceef517135b216f01ba6ab5474ae11013be7445e7cc24c9d9dfff729
Date: Sun, 04 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670147454
