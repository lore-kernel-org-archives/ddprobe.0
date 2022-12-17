Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF84A657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84396C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671263487;
	bh=xjBYjE1HQHz3d0k5oIWobgp41SieHd1k/WgTPokrGas=;
	h=To:Subject:From:Date:From;
	b=XPKl5L9phe4ZI0QRGb6YXv16nKtsU3Ixa/W0lPV97vhU3BOY949EB7v6Fj8KnhMPJ
	 jUI8WL3rJ5faoZw00tI0tzPIn+COS+xBHpy0YFdFH/4mdH6REC/dOcjxDPxzDxfiXl
	 IZo5mDCKkHaBRVVZEHCsQjvoVYsD18Y67VVBnzdhT7NgafQ1HyvhRFifWOaCxdjblI
	 cbUwBUwqEwebn8YASbPgakAuDtUg3qc11/cuEjFKD0R8p7fD6pVFKlekCCgUNtLLiu
	 xP+YhS5huuBUunxwko8b61o4puFQmtV8/8KuiSMcj0gPCgvxE7dzkoUQoKQbYbB3zv
	 c0AUSLuR9/MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6411CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126348739.27810.7626111682889090412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dbbe879cf3d207320a31155a367f6e524fabdaf37b36d84648a48af778a2aa
Date: Sat, 17 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671263487
