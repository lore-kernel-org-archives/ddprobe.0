Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BE73D7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703ABC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664922653;
	bh=5tYQhcjlfPJbgq3hjDWry2nVB2ve13aZjVSA9iugY2s=;
	h=To:Subject:From:Date:From;
	b=ObBWRSijzYpDFvZTfryqKfCXtgeqAGkRSqAoJO+Pqn1iY96fqAkO3PoiPPFt8k7G/
	 d7eltHUm1XWeabqyOQPOW22l0fO5xvJ+p/BiN2no5TF2Q7dKLlqgP7oefvp5amNprH
	 HTYFsTxHgvn8IDAhwX0IHr1XK9WHpHCD9/O/rh5lLvldm6LJ5e4dKzWxn27o/E959H
	 OBa6Ew3P52Pdh8uf21dCJ0/uhmUdnTqqQkLlh6NPHaa4qpsU0KkytbgZ9f9Fi9sSau
	 eyzhbQ76hqN0xDWUENCPOB4YK7eC72bd9uNV4h9AG5nMjzpo9TPZi5L4xBlP7qJuSR
	 dG40rjh19gWRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53124C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492265333.7825.4818354110919484312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37e6a46f4e1623975dcd77dd661f5be9b6db7b17c4dfe5b8c1ff2183a193e59
Date: Tue, 04 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664922653
