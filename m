Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681BD7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07C1FC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680581826;
	bh=5doRS/xjFRu2Q1L+orRWyQmL2i9T4/r7kfjfsDFmy/8=;
	h=To:Subject:From:Date:From;
	b=QaAlPa0ta/9QUeyE2fJqheSXIzJ18TjYD7Gm7Wt1K6/3NWkVnbl88PO3jl+ZdqeoU
	 WlpVU5BGPfWPZnVS7hmFnt14ZamAWHJyYdHcogL+4UaGwllgqUvLXvaCPZLQY4A4bu
	 HZGKTq61QK5v4acy5M1cKn6yaBOC8Nv7NFaOfG/F6OR82hBE2qntyVcguQXs4D0tJo
	 0Ql/tXMsjcZZeHLJdX+WrJ47CQgCqSWiwtZAkgL02hz4tD32BP6HgmkbWK9Ht2OYIk
	 Q4mVFosVChbZkARdKmZBxarO07QGaBVlltBzGGkL4FcavIgcM+3wkt6QFy5d7yAMIJ
	 6SwWdvy4ZDYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B5DC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168058182585.20358.9907116628951454030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b3f300a42dd2d895bf45250f6d9c8d628c2527524c623881c5810a2a4fc4ef
Date: Tue, 04 Apr 2023 04:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680581825
