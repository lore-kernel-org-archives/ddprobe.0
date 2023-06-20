Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFB81643F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE93BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687270328;
	bh=MzcaKk5p9FDDiHCAvAKTyl+CYyuymeWKExj2Lj7FyOk=;
	h=To:Subject:From:Date:From;
	b=ghpC7cxr+bKDxL7h2+JmdETua0aWrms/XBY9sA1n7jSC1EwqwXHS1N9aWOWibePFu
	 zcxA9W9ugLBLyrteR6AqcuhLpC8sLOuglJLmGhiBWDD+qEZ3UdjQBFh+syP1OgMBUK
	 E9P+Y4/xEZrIAnuj4g1qO5mDKmFikwvs5/eLpyXhYbLYWdE+wHLiQ/tvyamqP+x5WR
	 0REAR3lr1Xm7bKYjHNcAj4qeKoFiZZ0h0kpPYLq+1KUkCp5oAO7RZLBvOOVwRKx9IV
	 m53wl7Fc54HX9d1r3CuPgtAfnBcJhKNzLZCEfGIXUVoefAQlOz9wX7Zo0CAjHFLCqg
	 T0VVNOOi/Zf2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB64EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727032872.24242.4923669991938804651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e830f61900b3bf655b1d652aee40e4d4a5b1985f842fe5b5d536d7cb493cbf
Date: Tue, 20 Jun 2023 14:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687270328
