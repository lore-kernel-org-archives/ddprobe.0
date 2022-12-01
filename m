Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB18A7C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70165C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669868454;
	bh=HuFtCSzo/DZEWOCA7550EgAQuzCquxnTL3iuRBD2Qv0=;
	h=To:Subject:From:Date:From;
	b=Ls3pMzFqekrtsfhFiQOT1v+2hZk8adA0o03PDFrzYjSWcfx4cbGat+fz+pK/oZD3P
	 7lLEaHJxDv9R47cDjsWlc1l5Z7B3MJ2AL7SfPLhOADCnj1Xtz6NWzVgLpqzi4J1VGA
	 mPpIQpD5r5aC357xioT0a1C3VkZ+Y0TeZn6kG+ipcbc8ZqsvwZfsN7brVZ/4o+N/uf
	 knGS8NxvN+eVMOk4Kn3mEh9Q43i2RenNESuIQHd1ROXEFjAspWWZ2KZP6PudjU8vKm
	 Qqq27yYbtZ8kr+qSeplX6yESrYXadFUHVRtnaM6/wyizVzh2tc6cifR3J7W2oY4i+a
	 g7LVjOu+cd6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550CEC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986845433.25795.13893539724739206759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e223ec31d5b682af489b36049833f094096b7d143ab9fbc2b13c90d06752480
Date: Thu, 01 Dec 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669868454
