Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B520C2C9
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4759C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681640765;
	bh=obFhHwyEGROuVFhYJ9Xo2W80HynpuRD52wAeIWyA5lM=;
	h=To:Subject:From:Date:From;
	b=AwKD1hChK3+Vt4XOA/5kfk5BCul1InowRHXtu6OuJCCuHE9b30KPpI67nWZePWrxj
	 IR6LkB6/dSnHcYfSGe/5gfm2Lib75TBiFD7oSMBM3tg36WqC5GVfTpcXIHorquRm3t
	 JW7BUipEgAhxjE8w3Ds1n/HfSj8Gb8njDx7esGOvNCUttSLjNbHhcuee32ESEy3zbn
	 5W6skV6XK8x2EssYAg48swXCqmhGOj/xeKVQ8EcBaMxQwt+O3VjCVkwpP3yoG0vpkp
	 XDngVLZU0TJk0Oe1cmx9vDbKgds/uPGiOGUHBuQmUH7xO2BQKogKnkfoMJ9TRI3bSK
	 UmuU5mSszlV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5960C77B76
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164076579.20796.110134637070426569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ae0ca0004bd3fc343e4a224fdd0747830aba45a710b56ad729bb5bb83c621f
Date: Sun, 16 Apr 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681640765
