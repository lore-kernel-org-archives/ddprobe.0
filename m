Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1601FD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF61C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682783166;
	bh=5xDPWpRHcqjgvagJsKULhggT7KVmJTEVBN47dNvchNY=;
	h=To:Subject:From:Date:From;
	b=sjOvSib1LGPaIyIVrPpA/bh74MxrlTBbpQxkxy6hM+dWKzPZA4f+n4Qlk90aEFjMN
	 5PeFtSVT+Z3Srme5p8IesojjJ+BQRD350Bqs7Q9dGur7jksnsR4bhiQB1q+W9C+jF3
	 BvuMeF8HiFro2pQJDpXR/mnsyUlBsg0BqY2vnp5iPPq8o9yXrfG2MAB9u8N28LQIcS
	 eUASC9gXKsHxykUVLOcpoiUpU+oyaNrn74S4I0HXAX9h84T5IPGASVF0Yv74G0B/zQ
	 e0TcgjKlgLAMui2Cj1u5tPnByiujuA/7YBU/+bPYkUpOY1Qey5M1jV4IevkkDSxmUh
	 BcqtnFu2M/W6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DEFC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168278316579.6028.11778206902053668027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4026ebd3ed01007faf41e78a0b6cfdec51d9388ac4b3eb505b07e90c42adb3e6
Date: Sat, 29 Apr 2023 15:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682783165
