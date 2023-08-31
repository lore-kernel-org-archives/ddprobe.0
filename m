Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A479746B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB26C433C9
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693471449;
	bh=JqaLt5lKfQ1wXDWE6PMIVVHG1nNwxLrfXBvo536Tqpo=;
	h=To:Subject:From:Date:From;
	b=Q4ngenqeMC/aKe/i0HeoI6ysSdkylEORinpp/1jLuorbyHxWjrFChEWIy15KqPYKd
	 NAN8ep7SNgIRlPk85wfMPdgCv/3DoewDgzfrU3Z0xbGlG7f1trgxT9xj8RDK9rcil1
	 D29aXjZBeguMF9HDJBo4pvVMgMAGQ4NBfBlY2wUDso5VDC42yplgJ+HFHHp3KG/SI5
	 nkC8GgibwQEv3OTYWhlnm2tsntqFcc7a/JQIvxnDr1dXubF9NMdmPpVmYVXDcQmCCN
	 qGlKjtF7Pj5PoZoKnqDQ8XWSDmHihJ8bWkVSFqFaWTDsBWOMyZ5LYDBGIj/gjz2M1Q
	 X+J4iBKSJh5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6AEC83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169347144870.19545.3675847875658505430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee70a40d94d3806858ba48194d487e95fd481fc0626edfa26c1802e303ea1f3
Date: Thu, 31 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693471448
