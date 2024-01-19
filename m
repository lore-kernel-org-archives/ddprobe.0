Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C6B6FA9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705647497; cv=none; b=uUK4KvdFLAax+zEYfJY4UZlSNOp8YT+/BvLH4iLvJoebsZOiGEdsWHyIy+8lUYYYHH0Ok4WtfFjIXAWknm6vdpMYp3w/aGbkP9rtXyW36wSM5mpi2fnWJSA6WThPxAcDG0y7Md3vCGG7ACVbCUzzNLI2u/uDTZC7uKzDqZkK+4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705647497; c=relaxed/simple;
	bh=BAmjaagE4f5CyvLAAZSzWueiE9iW4estxCK9KjCbivQ=;
	h=To:Subject:From:Message-Id:Date; b=Vm0l5Rw8UxdNRk0dGsItCdbbPvInyq7EyTcoTBg5FIEWsszILXvM5IB8b0vyK2IU2R44HfD3BdFQNn9DwM5dcx3RpdTWbtvY3FxlXdNr3p5fWFh96nr7feAk36/TwtzIkB+Z7nNYAcEFHqQxBZrUEn2bxSFuriE5hpQuCScOxTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExUt8Hig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExUt8Hig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F8CC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705647496;
	bh=BAmjaagE4f5CyvLAAZSzWueiE9iW4estxCK9KjCbivQ=;
	h=To:Subject:From:Date:From;
	b=ExUt8Hig7ClMma+4TUOLBCG1wgb3afQTqQajLxjGUgYkrXf0rBnmgreOs7bEnhmBm
	 MQjbX2sM7/HLRe3/GbRckYdcQ/z9vN6NBm56wW5LtJXoY5xOv0l09jfhdmQ2Wt7sj0
	 q6DADMdtY9qOuIC0r0cfHCXltaps1RxfVAEgLKuEQGiDcV1yHyP8yeE3zmMdibImlR
	 qXQvVbq2xv4WBLzx6WtDfZVoufDdf6k3aZzISoA9meuGKGvoG34+cl7n/fFm+OocAh
	 bHCtugvP49KmR2TXRPygt+m4ahdlMTabrfjiC1LexI4zYHotyrJ0gao20ndO6LExk+
	 p0g3VEU0K9rFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4C7C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564749637.19703.149504905367374268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20ce162716cc780d77ec779fa76741e34fe625765ed6a5bdd7f490c95a90a30
Date: Fri, 19 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705647496
