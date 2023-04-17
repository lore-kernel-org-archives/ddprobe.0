Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1321848
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2456C4339B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681719485;
	bh=GNpXH6G8z14KAsAAfSaLsCiI4tezFol5qk3tcGm7+e0=;
	h=To:Subject:From:Date:From;
	b=JQPtLhmYRxNxXE3olsuqSCsyTqAB6/PBdYJDvCejVyifTv5ZIs5fKzJfjb9Xya/ay
	 DyQFOHpXWi2xeNaT+JI9e8K1UIKSHSj2/Bkr0Rb2YUzbN2lQ+Gb/f34sCVVYBLtujA
	 EMI4PJ8D77aTiCCqkTzNU2MWvUabl9WPM4RXW9cMsKV3IiPdEXUOujqYsMEo0eaBFd
	 T4GCV5Hu959WjvbvSwlLbstVS3T03IP3i5Y5Y7Bn4EzLvf3kamsQYY5eqirBBPd7rX
	 jzsvOKNooC9rDH72NMR6cYmJpwNQnhLfUswQS1g5uw5RaDFVcyTY5OF5Pu9x7cxl4E
	 9JdTIPez1I7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C2DC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171948573.10026.3467301405848570070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85017fac8406e27aabefdb4ee3fafce92e29f85860d8f4ac49f3567baea7c658
Date: Mon, 17 Apr 2023 08:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681719485
