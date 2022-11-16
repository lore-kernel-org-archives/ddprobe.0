Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC0B12290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E485C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668634854;
	bh=Wnh+N1FLBRQtemqmLEK0/j2TGJIT/5SAwgozu/1kTD0=;
	h=To:Subject:From:Date:From;
	b=OsK+VM60BjEynFgDjo7OzWu2hXqfUR7Yhs+8AmDi/e1Y8OSzbf8hMsPBgdiQOH7u5
	 TEMfNZiwpwDEwpTsZNdmVLf91IU4QdJlBdQ6zgpml9f66lGUOzhXZhkadOUgQz8diM
	 1sOrKpV+2AgkI4f6gsxi1MKtiatFhFFDCiqPSgV6ee9yb5jDkf+qF6M6Yf/KulH0e3
	 Zend29bbfDNryumLzfU945gvYnIzPhDLiiVjoCrM62aRpASxIXu/3zHaMH2sHqjhkh
	 r5xVQXVF3Iq2G2FCp0M8H5eSwhI6N/JbuSiQyLLmWmwXeHqlp7wK/dw8B8SldLXQru
	 IrXRnDzWXfkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FABC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863485434.24370.12885938917665764978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3325ce7d99536b15b1fcca098a4a3f92033d29a282c00cd21981e68f9f3e62
Date: Wed, 16 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668634854
