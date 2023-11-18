Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3BFFBF1
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkoa2YVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C325C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700297896;
	bh=/5r0Jn0iv9l4x0Sg3fRwU/IxFQ/n7dbuRyAYqjiHP8U=;
	h=To:Subject:From:Date:From;
	b=qkoa2YVyprqMkl6EvBm58kfugyUm70DGIyXr20znMDTg3Ypd8TSMaVAxOju2BqTXW
	 Ev1Nhti90CNIDIGZYuZdCZU+EHUT6Qp61RzBaoHdeOQZe8D5ZzZHq4X69Zta/90F6I
	 1fWnNMd13UmUGV2IYFIrQ0UH8DSkEanCSrSlcfHq8vlkePY2v6UmUd7jHy+PRW6lFR
	 E5CmC6bd9NacD5L6eOpU0QGm1Rzx2P2LnlxtJM2Ddadcq4X8WD/Minl2HEK79rckEv
	 L6o8yKzwz2PjvhQcWov4jR97dP08MdvuiaJghGOhMavK9SXkCUaaHIk1O8dAXCJScA
	 j3Gwt2pGE3L4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7156CC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170029789641.5359.11600205279351128786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d2b224a79f854e6f711e53e9d8e3cbe7e77a3ea546d3d28d94af426a79e252
Date: Sat, 18 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700297896
