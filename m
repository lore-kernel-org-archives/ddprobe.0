Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775BA1798E
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 18:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F22C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694628248;
	bh=sJiDoLZXMYM0nH8CJi1vKrblqUcPV7wLs1r4ZCQ1Rrg=;
	h=To:Subject:From:Date:From;
	b=LEWkCJ5gm6IsHmcjqUyUks7anXeVbsBYWveiTEM9CA+/o4mlG1GFlKrzsNHAvKPl6
	 /tXExtlzL1td8MW/l/e0Blhyhnvx2fTe8EUzkjNKrRXDdxzxu3SNxl9P0rKmyxQjz5
	 BYvkR2Dhtk4vw/79yODBqZDLHoZLgKhWh9C3tmqsZOAutxsxkT+Ay8RYGirAKdHrjA
	 FVS1QyuDOmuQFCZEc7QKv/puXLXidjYySiXnrkCmbUhPRuh4Dp+mHzdo1vg+7wunmt
	 6w0zE+6IH/3jXkGTx/LLeCUgCWPfMgfXJrnrU6u37fkpY3tq1yBuMf/W5S6LeZUYWD
	 2Gy3Yh2BxPpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA01EE01FE
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 18:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169462824870.13077.13945662236646158934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b397bcb992bd381f8cb404411bcd70868c4432dff622e6039247cf791a7a5651
Date: Wed, 13 Sep 2023 18:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694628248
