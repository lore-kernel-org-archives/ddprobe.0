Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E132C123
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A05C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694426048;
	bh=lFefy+zVjjgq3sVR5WlSJL6oOb5Kv7ddRvbXZY6IED0=;
	h=To:Subject:From:Date:From;
	b=mJovCv0LxincdbMKEB6n5D0Y+MSxpZnhtMNBp5Mv1DV/UUrEMQBjbCrZwbGH+6xjj
	 2XLjI04/eNCVEhzoG9RSR6F4IVbboC3Q1MgcGCqgIrgu1wpG8pTdQ/kMm7/XVKa1Dx
	 7sVdEusxfGhd0KMh/BWo6sA0ad9/dubjRBIuBy1Obf2w8Q7NNSIAz4PYNlb3xHWum7
	 BtLjYiwMagf3tqcHB8uVrvxSyjGJPvK0diysdy5ITyDVExmq+8FuNDaIGLMyGf0L0F
	 qDvBbwdz9OTe+wNqfIrX8bD3RmEHXVpd9Gaa2+jVpdd4Kqbj+ddZ89APA0F4n+E4Sl
	 F5v9Sm8J+lF6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C4DEE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169442604872.30473.5744998286891208283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2154af98e487a66858dbcdf39071897a848a07f8cb3eb0ad744aedffb247611d
Date: Mon, 11 Sep 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694426048
