Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD501377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781EAC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671154887;
	bh=zAT81Zl9nz1snph1MPfrE1Q3REiV6wdARJ/v/zBqtJE=;
	h=To:Subject:From:Date:From;
	b=Wt8Hb/rwcxsCPMYfUfa9A1o2MR364z9X2OhleTEu1tmuvY8Up5XnOXnYXrudrlQys
	 dxq32hBJgBmirZqJFQKEuOBwr0H+r8FSOChiGCFbGBjIQxEbhpra6xjaQ7Pq+/3QsP
	 n8uEGTO2/GnYRypn2e/X84yOXAJK/ljUh0oDKe6rK3pYuJatecGqpSLfEf+W6RmiBt
	 sB+mQNpR1fJFzso317fDCG1LVvMKlBxrebKvlW5j9GovxUTtE+mipdctgtDS7z48LG
	 Tnr2Hif7PV5Iv/NGE/QqfQWt2bc1WuCbbqtTjVvLN04RB2Kwidwu7ATG2D2IeTdJCE
	 i40/XWPCdDZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61505C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115488739.11600.11272346650227482490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945f14430bbd2260f71cfad6b323c3a556fc8e34bfed453c62580544148f1a44
Date: Fri, 16 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671154887
