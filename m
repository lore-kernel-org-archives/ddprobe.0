Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AE715A9
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2E6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665462053;
	bh=FcV+0BIdBNnvKVn4Zh7zWu84WSi0NWwt9Ic7ruEOPtw=;
	h=To:Subject:From:Date:From;
	b=GaJVZzTZvlLbGn8cLo0fL/gLoHeEXMJDU5L8LzeAXmVLCxkUDYqacs+gx+DNEGQ+f
	 cSk+//byiqo0hl/KGTNldHirMlfI8gAyfH4b+mZACYly3s9rDQRO5wf/CeUOCsmbfq
	 tT3GhOP7sqv8UUAkOS6m+Zi/w7ZkAN4apniiiyaVvMoaegKNBC5e37OmI/ap/u/6XR
	 YMHjZ5MoCSXPXiTtdZKTbCbVZTuWVExFkdh2CeDQAsJjVBtRD0X+r+7NzSv7yJ+B1W
	 wdsSaW7vJLifn1i7tOwz5iNY8jzFfLDD/g6KILeXq7ScGj0wRlInOAn1KpCa52DN6X
	 +1nMqvCy280Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5318CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546205332.24268.13278975894141428650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e57a3709b919dbc8b5b3169a40a669ab2b0d69cb4f05c75812ed0ae8811e3b0
Date: Tue, 11 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665462053
