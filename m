Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D975546AB
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB4EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671463287;
	bh=qeIia1mMNhOkmEiBbvi3cyupUzKvJMHQ7KY25D3DtjQ=;
	h=To:Subject:From:Date:From;
	b=I0G4qlR88wXw/Jw6E49Mg0iKdxMkRxau3/vAQZufV21C4GUmXEGS+kx9HP+SUjdbl
	 z5SqXk+l0dbb7IfiJa9FT8bLS6Mk94mPTWWMNtk1z1sOTJ6ye9RID3a9RR0/d0kpNg
	 B1noGd68N5bMlehuJ5FGBP4m2Hh44JD3bWM5CseoH6a6podVGuQwH5smUm0NhHiAWy
	 STAD/qNzOpHUnid2lfZBAQczThrdPDe1yIGShrUYKX5M9OicS83AcYe25+DMMf34xD
	 4Y2wpLshV+Ez1I/swxa50kNbakK35ebT4d5MybnRkGtXbke4fLdqxR7SdgALkP127H
	 byYTstrxjPOhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A5AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146328739.2220.3448152253354066785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38dc61247c082d5f337fb619298a3c33857b04d7d7422e3a999d0f75af90907f
Date: Mon, 19 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671463287
