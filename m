Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D260D6FAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780A0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670617287;
	bh=lx1cxe7S9xyVfmLJEvO/iP63R66NxZUP4EVhD66rlaA=;
	h=To:Subject:From:Date:From;
	b=L2WMpnpXIXgnkcp9IB9+tn/TDv51XsFg7yV+qsHQSyOgmdW5sVUqpGI/yGfA/bbev
	 hndl+D/nriyBd3hyfZaQBPsGKsq7krjZEcP8NYfTuk8G8nEVENC6tgAtEK3WTjVCNW
	 jEhU6nE28kZr6xUf8258MoMAqSJwkrYrDROuFqZpyK+WjaqPIdpjWANdtLh5l5jc2y
	 WdQEXLiSRQ9Ewswe2Jhav9krsKt+WV9TRMS7HxliayQmhVNh6/vxdhqo6s6KaAOE+d
	 HSGn6bf93ZyUQ72EfxCKlun3+EJUXbrFapSK/paQgsF+B8hKyKv7hqzvJturJEoqN4
	 58RlKg71OKxOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6171AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061728739.3835.18272195966850760058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8f221dfd1eb40998ac1e22b5b2da3d71a73c111a4c07b3cf63dcf9ce21a926
Date: Fri, 09 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670617287
