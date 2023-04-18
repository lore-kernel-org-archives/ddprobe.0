Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F038185A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F67C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681803545;
	bh=Ln042M8cSsZAEzpXxO0T0wtmTrT5H6kB8VzGWBQaqYI=;
	h=To:Subject:From:Date:From;
	b=iy+zYDOfoHLQ1f3HkDr0PsDFf2Z2xdfklEavo46EAZQv5+7b4ZBAX3UZREi9n2dND
	 Yl7zi2lj3goCr8nb3XmdvmquzJDMTRtSn0iQwWqLSBtPjxL2DPj0C/4z7tVMDeCuEM
	 cUazUvyGiTTsf4N5es4oOBPtPZuOdMgL4A984TTnObOhmR4AS3tx4ZVBIVll1DNoy+
	 bkcwPe1YcXSwl2dR35kKt8hdnx8s/WlDy6pPHE8wePbebBluDhRs399+j+tlOwVr9m
	 Uy1LbzV1bMTXltzoYgS2hT7DXlybX3x60KaqW2hXKu5z6ReqpoORXaZk42nE0jBk2+
	 Oja8nw5Nt2rAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AB9C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180354573.12876.8891885064847601284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848d38072afed44f55d9b3f939cc9cbb57d8cccf6b57f2af6e82c9fb3db56c42
Date: Tue, 18 Apr 2023 07:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681803545
