Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C598515CAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70268C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670283654;
	bh=8VloK2rRFY0LJ3W6kzYMVS/mTNvZsQdtynJJ9iAyezY=;
	h=To:Subject:From:Date:From;
	b=V18pPO5kpu7pKyjeiBnp1yb0BDatHf+ouN49Yz0p5Rs4FYTQVJV4gphauMzdNFt4V
	 WhJu4mpJnu/QfWrsIzP0xBpGQd2dt7ySlreG9O7Eh+HaKwH6yuJFPcDBn07z8oiyOj
	 lg/EPPwrD7/B/ge83+cZcxbxnn/M7unG4iuzbyiFljKR5LOV8nYrDIRtFU/N0DYagc
	 yCF3n5S0lL3EULv7hmbhGPpMap1LkBoK0yxdl4sQOojodUpvSWRFLIhF+2fEKSBOXN
	 L10ErPBR6RRIjcGGQwMzlyPETC7xDrfuUO59VNbWT7c0yNfqpvxjoQJRYpC0quzEPe
	 aF56KRkEjRrHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571B3C4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028365433.9853.11710707701421013984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385e4f203203226a148cdf7ca7cac05fa79798038fb0d741f9581ae369e03aad
Date: Mon, 05 Dec 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670283654
