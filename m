Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1DEC4
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoBKKXr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1042C433C9
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697860696;
	bh=ELymFrdjsdE+wk0tu6NtClyJDJtvNDjWoGJpbGltfdQ=;
	h=To:Subject:From:Date:From;
	b=VoBKKXr/8WlyJQ4KqzISFLgQC04laN8yBN5shIjDL/pX5mxUj1rKQIkCqo+YJi1uW
	 IVVu8Jm+zi0szovvevRMJBtfVw13/0Fk0UdCaAnI67Uh5ZGrdThMc8+YKdFP0M661G
	 gbZ6IAUGdVu44kyveW0kHky1b5UcDb9vHY72+83kOhGxPNkAP+FzNNIt89c1OuAXpT
	 KD+p14CiE8TwU60F5No0OCQ6GUM97khrjHl/S/ouJIKqpyT79QmMfh5zAaS79ny5gR
	 AvKuC3a3mcDziMhBI3izh032Kgfb8Cgok9tKTKpkQ65DG4K3z9fjaIM2VXC6E2ksYj
	 9wToGj0FKeJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B598C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786069645.18047.9757678296009120040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b7a5b8681ba4d880d8dcb82ea202e0302221b362d11b1c172eccade1be6b5e
Date: Sat, 21 Oct 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697860696
