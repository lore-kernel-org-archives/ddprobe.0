Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6AE1775D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB9EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687868588;
	bh=/VpHC3pA5PjAnUgXusK/j4MAWXH2h4omwJwCBgLstj4=;
	h=To:Subject:From:Date:From;
	b=BPGXN45qkngePw2q8EaSA4Yfix49WY/U+j7CC5rneWJTGfpQs8GR6lYraZ0L5RkRd
	 V1DYww3TwuNxP64dJVatDus7Pfg1K/B5S9CNqqa39G4peXpxaClGSWcVpKBxSdh4FX
	 X2Yb43+v5pwWfTHbNgjrSM9FlkU3UrOvayLUDhp0D6nbfYvU8FkdP3l/5OqQlzaMVX
	 7bKKecUWg4eAySg8SrjEVv+PfYHZ4O9k05q4t6+bCYv07jCOwwAvvnA0IJSBJXdva5
	 TyrVbUoGCZ01/m9p5msgpA5hVb7NJx1BCXzsjE6HfBsUr+52+/Yh2xK8kY5N5lU46t
	 1Peeo0JoPIAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3212EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786858866.7040.15080853564213112557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008301f274598acd1de0345689de7a0160d0522651ec1e432bbb1a1ebc8feb64
Date: Tue, 27 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687868588
