Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53DA27F00
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689958928;
	bh=tAtYSpfteGQBnbCnon0RxuMig9FkPHZeSQjUJbiNFvQ=;
	h=To:Subject:From:Date:From;
	b=dVa/N92IzltRVB3SP0UJ7mygoLtwhOe6o+hoQ8GgHDJlQ7VfPWMAaY4+DSwWeaB/u
	 AKBYTIBXUVdGC2ltXB98Lc+aoLY3Pox0Vl8wPQcxz2chgtay9FHteEYEcq3tuN8xLT
	 6r29RcJaKtjlWfEt9ieWkz2MKrAKAgLJN1W7A/7gXmlGdjXqcijn+hHg979uBOj6ge
	 qWfr27a2IEX1iWaDLtbMhl55ETFJAKAEwiHPystvQDQlbeCtkwFyVxWQBrNCC2fEWt
	 ECv04TTmUG7air8ZjIS2J8kp2kuU/K3PXNkLzC6Z1man159Wm2JDOeJ/rrq1d4oxJT
	 MEJiP8PI7cARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0747EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995892871.20073.7128018969085657366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd96a84f8e0304367079f50959d74b1b3c14add504c7c00b9243b006be5e50ec
Date: Fri, 21 Jul 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689958928
