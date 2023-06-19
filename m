Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AEBEA0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C693DC433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687214528;
	bh=Tj8OQmMEPp4Uh/B5wky9yOq7FY+K7SULUfOssTwa4po=;
	h=To:Subject:From:Date:From;
	b=HHnl+6tu786XgocAbRfZJcGyE/BDodJq1PXhnZF3ehzEIMoelEHFhjA1UyvKehvHz
	 gU7oBBOgyn1hDEDBzumS0kO1KSHX1BvgF5nsRG/Iv9i8An/vxG0fOK9pitB5tNZgJ/
	 uDfRndO/MyJLg8ZVTihXsm6sKtDT4zSefFlxjOg1h4dSfJMHq/k9O2sn9C91GmYD0j
	 R9Ki3l1P6iT4wIT6iBN9jYqkFbepsEOLPBYrbTDETzpH+ziaetbVXo75V5pFgCA0O6
	 P3WgErxoBPWzxTn1HuzH3q4swS1D67uEQGhFiM+iha8Hrm1GN3CKwOivqhMAp0GzRC
	 xtU3Nxe5spuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B8EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721452868.32483.16252510261321541093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b20766c9f357586a41ad52bd14643213d078e22f58fd7035e2706f429d0a3b
Date: Mon, 19 Jun 2023 22:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687214528
