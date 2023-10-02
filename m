Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D9E1DA4A
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E9BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696267568;
	bh=505IKRcmcAsmDtyW7CKzvaS8T2xHOeV2dCRH+SzVRho=;
	h=To:Subject:From:Date:From;
	b=W5zFUcew/cmgDBYkmSjUACTDNKbLuzlOHG9WHBJrCm53o/GvbCRyy3redGT26O3NR
	 8Rftcnbl0BAegZsRaEQ6kqYC0tsudiUxIKDwbYjnd9yqp2Z0w6yGXcdQEl66RfEu6G
	 idLbMRKi+PvR7oxqDnSQnNTsRIs0uwyaYrs9OuTqLJJhlcnFxvbv4FXgXwRKTCYcFF
	 CSzWjnKckhgFHWsdfbU5wrADZuh1TYu2d6RoPA6EJvrnDnGiaztcijjgvgiXFIU7Y5
	 9MiJJPVTmR0U+FyPi6nN4vlOexHFNXcDwsgHg96gH99vZWIe3dVZBHMfc5aKSeE8w4
	 WwY9pVmUjdxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FFE748FE
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169626756870.13233.2259421739365797829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f98a2ddd7651632da656bcbaf92ea43f920762906694f3c426ad315af651a7d
Date: Mon, 02 Oct 2023 17:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696267568
