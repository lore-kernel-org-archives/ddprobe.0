Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C4723DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E846FC433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686672428;
	bh=FdGAAI3YZmjIPw1cfmCefUQW1g0AWl6jW6ArznMvVCg=;
	h=To:Subject:From:Date:From;
	b=NCeONJGSSA+Bpku7dopiy/2ANJz+IQ5m4JesaN6ZLktD2Ukqfe1RDoNn3ZW289R2i
	 jwaMt2c7cNO+MBvv11TXtRAFvcPJiHYRmEjGl4lEy9y0Sorc0X8OJgWoAbZrmySMy6
	 s6x5abbQbo6+BJ7pMahi9yaDvgdLEwGn4i7zS9GHphMBRqQ0c6THXLGejl+N9Vp/m5
	 DqjWZflovG4uZU4eqEjGF7v1yevMi1VxCel1IMuJ5S6N3mK1YaA7y2GNYQtphzM8iB
	 fTRpur9Mb3IcNzyP7ZJN+fDf2crNvjVtCg6Y2Nv4gJDTvcUZ/+3H5ZwQy803BGdDlQ
	 QmnBca42ivvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8986EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667242880.1666.12862279039510457717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44847a06e56b0720b4d6f16ddd7cee69fa7ebc018092659f3d8681b02443b434
Date: Tue, 13 Jun 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686672428
