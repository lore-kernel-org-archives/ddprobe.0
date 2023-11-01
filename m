Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CD836B
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4nt2N5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA62C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698799096;
	bh=KzCq0fESD6ODe2/0qQvjyhiMK0DW8Md1a+T8w28Qit0=;
	h=To:Subject:From:Date:From;
	b=L4nt2N5TuKAkM5pL7YyVPZ7R9LTQnAtlogmuN6ssOcStsD9laVyohDYUBAdyLIzmp
	 TqKrZ3b3iFUaCQXE1JdbCY2ndtNDnfuSq2PXJRGqJ8tChQvrSZlhMUETat5xGFsmME
	 UkLmscYmZw45WHnRvrJhLLZPu8uIxxJLN19UhjfuUMYRIqxDDl/zuXxLbgRZwCOgSz
	 Wm416I+M7jvlQ9cl4taoeeojKJSzfgAG1FCDTjyh1DGcY0wHcxg5sYxVNjyZopS5tk
	 c3IKEQQ8G2DQrf3bqEmCbbbTiqbwH4UbfWC9GVILk8WDlJDU5CMjSx73+3sp6ioZXn
	 Oiv/1Y4uegecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0D0C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169879909644.23983.9533230808512745990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f8a5d4f382e5024b1fc98660c823d330bb64fb260fb8e3e2e507f95598d7cb
Date: Wed, 01 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698799096
