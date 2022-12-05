Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18486125
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF48C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670260254;
	bh=XoEfKOw0seBHvql/i/WUvpws0CJWUOghzI2wuUgl4HI=;
	h=To:Subject:From:Date:From;
	b=uBXDySmXvaadJ77rbhoqx/9gLd7uVDZhWraZlubU6PG1xW2o1vyRLJ/QDbZxWISAf
	 Rg245jgCKWhQ6fsJMaCV1K4/Vg74Gw7WHNL+n8jjY4i3wvhEiU/svUpGcI8Nfnb5dd
	 l8OYyvGMYD1OdGE4nprBoFevBNxPyS1F0VSuv3U0mmpjr4zOOK9KxjN6Cbeheq726I
	 SNhniNiYK7/x6Il304jntVgXwVncNZi1ZtFV6cOyPUKXzfAjdXZugTfeYaQ++whMuK
	 E0UbFXWmAfYnzqLNs/bkTFVxfodzuJBDe7PtOcElDi2d9Ncdfy9C9H3lNjGvradAyx
	 +XztPIJWvMuow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D283C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026025437.12639.17147705156101456750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48afe6e34ec7bc29a1c03d9f021f47b3a61093fcf2d14b66aa29cf2cd2df1b0a
Date: Mon, 05 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670260254
