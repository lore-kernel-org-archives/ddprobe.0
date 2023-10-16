Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9A61FD1
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP/uXJdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA67DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697428028;
	bh=EDkxm4ifFAABuBRKt+L5ppnlDvsV/emyI9HTjc3lBck=;
	h=To:Subject:From:Date:From;
	b=eP/uXJdgpLF1uZD8MPegY/vaRT+eork/E5C3250HPO/DRVjkuN3pd8zle31B+tDP1
	 bBAi9MA1hNAyvtjBH4gW4A0Dl29zA+Xo11TD8bXHabDm49AnbKujyYa48myoGy4PBN
	 XU0Da3YHdLs0zNt/uManlYiAuMZCq4ybZoCgYV3zS6nqo0m6GF7a8lG0zioJc5Shv2
	 QJKnd36CTxm/0GKVWWnwYa1GbiDDPDOkAoh86pEtqm3AxGPFzcNhzh+VrIlaaL7R5p
	 cw35iFS8gua8+3ZGXSSM73bjbw10WCeNSEnQ0bkuz5sGFkzQG/Mj/jQ4jwItyUpBF7
	 krLFh2cFJUHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA50CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742802870.15657.13189313404234372700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b788d2291774325ae44455fa91bd09d9459d51dee66cda2564f29bf337988b95
Date: Mon, 16 Oct 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697428028
