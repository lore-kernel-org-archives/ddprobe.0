Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C61C14A83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB485C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688066588;
	bh=tKU2PGKyQdZc4Jq5yqLZaitKz8zTGrgz5yC/Rs1WP8U=;
	h=To:Subject:From:Date:From;
	b=F3RFOJmyCOEQU6xvLQRCBmZq325HC4lk+nONSgepfD005SVmhVNBQwX35AKughwPq
	 LgQWoWfCM7oDWkD7RE69MscFEdMAd1SqYmB2dTXqJptH49prQv11LAfWmCfy+v4lSZ
	 Ut3bgzjFBzqA4jYJvDus5XnU63EBMRVtMC2q0oVSEg2d7dS7vNBrgDBmyjfzCgErIc
	 GVsY8gQ3ubyYuQ7QRFFH7xxW5utrb7cIk+mZChzBg0UMTYUp/jYPCLvaEX8cyvNqcM
	 Z5Z/W9VO/OE+0zWJ3lDzEiuA2h9aPsF/XhcEYBOYj479ysdOFV0phjlwAiBG1SDJTX
	 e9f1bwkaxxCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF47EEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806658877.23571.9281608750879899465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6728c81150b197bb8a0af9bb19c873eb43db7b21bb7eeb486d7bf7a8c39d09
Date: Thu, 29 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688066588
