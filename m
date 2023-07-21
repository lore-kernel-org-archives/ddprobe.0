Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81D1E51A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2410C433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689954128;
	bh=OcHmq93n7hMTYbuFSXAGjg0/YBaJNyLOPh15zkTLHBk=;
	h=To:Subject:From:Date:From;
	b=Su8dkiBGqcWnrdX3yyh8msHYagkYIC4T1fQDWuUVB2Z7JzRj18wGOqp+6aB2dXUEm
	 OjZaTWahVgiIlTG0uSxIyLtYubo9d48sqHs9JyvrqoxAC7GF7cIWRxKIKU7CmSullh
	 doxYdus28MqjjRGIZjW+Mp5dzAjSgyjwRHuMblcxY41tS5H6EHRRhHM/Rtqrs2qWD+
	 pIEaMjGs0FCc+8mdk8AbJYGZqgLZzi9Xmb7WCPuyQ+5FmBmdASu9FelNRJPl+PSfKp
	 9RiZvu4oOdQkm43Vfpmd+yQTbJIFIg77gVRI3c6BYTVxfELN4udHL3bX8m7EYQMTbW
	 lKbhpyPsCNcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78E7C0015E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995412867.24584.9070060263536533746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447eac2be45dd462b440054f47f9ff1425031d99f986b1c47c81f5873082f0e2
Date: Fri, 21 Jul 2023 15:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689954128
