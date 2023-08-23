Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D1C8EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD6EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692807248;
	bh=Z3BLALyfKUcrLCUXZAYTUOKxlKx5U5UE/vvy4s7Xumo=;
	h=To:Subject:From:Date:From;
	b=X2M4FQ4YsUk4i6Vmc5HRFcub09xzenb6w8R5DWHJJZZvag30FX7RLB4CiRFcpfoeA
	 j27F8PVRW7IXhDUZvOA79Ras56yZFFKWwdYXV0n7vWW1rdsYRuvwBH4+Fa0vGdPC+0
	 PQcTC69XBgNMEqYfClvGK8ueo7HrsDX0zojIfdP5r/khrQVgvU7Wx5o3m2dyANBR4D
	 3Y5LaOvKQNbbSC9Gt2rM1W9QHEM5YbuJbIV513CkJfjgkz0nTKPTK2LNcGRrj52MJ2
	 20qHHblyrrQWvWkA4ga9Rg+uc8dNJYHDbi247+mJmg2EprH/ndi8nOJQQhnaGDJxnx
	 uPI5OljjY2sQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89E3EE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169280724873.29839.254607092686196933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb3143c486566365549e23e46dff9c77366dffbf899da63eda4908d6a717683
Date: Wed, 23 Aug 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692807248
