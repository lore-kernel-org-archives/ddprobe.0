Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB63366
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBdTFOxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF4BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698021496;
	bh=eU/7RDet8/gQAtPJ6YqiQnxC9rwd/pwEaxExFHCJkXE=;
	h=To:Subject:From:Date:From;
	b=uBdTFOxdamQE1tTx30S3nN4KufK0C9MsozVf94u2ZJnDFU/Dt5m46Reu1JHTMLpxE
	 A6N2NhdyBeDaZp1pkDw2y+J6EU2oOPACGcztWHBkX+nTYZjsnKNOPsic3tordFWfhS
	 vTxQoZL+YgqDbS/PfpRKRJky5nYj31OwCpQ5eTMBJgYfp3GveB24T3LHyR8J3Tk1+x
	 H+nWB26s7MuA6gK27rtmYlJBvC90N+kmY3XHQISLciR/r9sfaHgt7dzbJC0k2C0ciQ
	 J0Lg0iV1n6zLyQi22QvJl09ztOfDnJb6k6wzFu/slIPLZMOhW+nFSBWy5rambDTzAU
	 vmRCjhKNxV1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C0DCDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802149642.306.4196828654493386845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebced86b7abece1a199b3b74738548de7c68da5d536f9689238545c43686de2
Date: Mon, 23 Oct 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698021496
