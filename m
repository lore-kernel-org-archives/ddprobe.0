Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05548498
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824A7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673712687;
	bh=U4iJ7yNTm7mdXLR1jQZk288m+bIoNmyuiv9dWwZVhrM=;
	h=To:Subject:From:Date:From;
	b=A2wtLfohNrH/+97PVJ9VmHLReCuBY6A8v66L1W6MptH8mPJ4t1rL3v70G6QLTnz8d
	 Qv6QYcS3YRagfzu0kwts/bmjBJrJ3eBURjHHbsYUxiCLrltxz8/Ax1EnT0RZrDijiR
	 F98p63VTYwWmb7RHRr8WE+MEJyNc50rT3MLBI6sIf+YxYd5XRZRqSvLGvMle1gO3Ou
	 wvCbjsHufbJmf0GK+0iTLAbV5zTXopv9UoD2USSnkn4BDHV96XPoqnYm48EliKhpR8
	 ZLRONlCUmNaCx48LRyNq3c5le0JR/6iVpvSSOp3vGM6wTo4vZ8xUTDfZ60WLJKOD3u
	 xwPcuTn2YRYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DD0C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371268741.21354.11269817108276059914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92b8fa826c7064db9b5180c1f417bc448eb2625a3ceffd590ed525a63ed24a8
Date: Sat, 14 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673712687
