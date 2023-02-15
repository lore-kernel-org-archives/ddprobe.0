Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37614C5D8
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7051C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676490545;
	bh=mYczX0Ftn8RI/Y5gaEiMH2rjtRR1HVjj/vlCoFfFkVM=;
	h=To:Subject:From:Date:From;
	b=MC9KkdltI4ZDoUFbX5EJssE88We0rVFEwLHxnFO0BKkcsLh00/5/dXCRAU3bWEym/
	 M0NuDl2N+GEpmvISOgOs91fFPJctADNhW+8WPjNDABPZuPsAj4DNl6EQy9Q6xMnicB
	 iaZ1joBgocu4EDnvQ2CDqF6K+HD1vI9jRxnlV9x5uR/dotE1b6fFsMyBfSWjILnpQo
	 nFlaXZ4GdxRWK55WP05LtqSCKP4wlCHwpuSX5odYU738UEgbirBhVpg1OWyXSS8JxT
	 Byjnett61KW7d0Jku9gLVi96M2sfomoKvKViyMZ1WY5MfmlogdUhXuhOp4rWzqhd2M
	 S5kevZJjVPGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB098C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167649054575.17434.11116120251607970944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e388f51cd972db1545bd42b1f23e6b7a331882082b750acdf10f33dc931232
Date: Wed, 15 Feb 2023 19:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676490545
