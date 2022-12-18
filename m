Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F54818
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91B7BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671346887;
	bh=lnSJDgDCYG7RUmBlrDQGujtdA7zBVKF9GBR6j2i9UrY=;
	h=To:Subject:From:Date:From;
	b=m4H109kRhr4pLQozlxLBxVqWomMWyhXUt3Yw2K00U9KoNZfIzVT98SSMyryLrq3Li
	 SPTJohN12+VL3VH5rq4dxtj56QZ45J4D2y2A+qM3jtfVfDIEmHpez2xYw2/CKEyNvF
	 1IetWBh9l33JihvUDzGNdUUmQCcpopVXS2Ii6abU3oThBmw9rx4525W5jePjtBw0Z4
	 dcEek7IgzFG/evio3KmEB8cqBf6O5cVHgKCY9mHTYHqF5pFdrohnxZSR1kaycB9MrD
	 f8m5Ab2gRg/WKR32Xyfgyd76At1MveGClDeDn3gRTtaQ+ask3VqBVn4XfO3qfuo6ll
	 dQ4qyozLipIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684F4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134688739.27335.14565305217116020013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffa6bf3118b0f920b7858131fcaee85ab19d18b32d6617af4f46a1c927a2c3d
Date: Sun, 18 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671346887
