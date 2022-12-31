Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90562F44
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8640EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672500687;
	bh=puykDvbLncUL9B+MZyilQRWNlcT9k13UCvvPjMj6sBM=;
	h=To:Subject:From:Date:From;
	b=U3XAFMIBI4IKF2LfWdNEoKSRMnjalIBmcWXR7OuJfR7eNJOUQgtfZPDRz+ZwXEhBZ
	 JU3PeAMggv9qE++PDsKT76nNIebNa+eweTaDDcun5P3bSw+Y2uFcm3ExqyJ7meAE1I
	 +9rDRN8SdzNHyZEdcp5G+Kr/IJ/TJHcbRU+FM/qNxATGE40bQ6kcO/76VrkZWj77eO
	 cwBg9Lnhu0lDBFVpxbEVH3RKKh3YFbYRQ7K0564Mc/uG2gwCyTr4HG6XT+HfVpmv1Q
	 JPHiPl3fiZJmQLh4e0+1Z8QTkeqcBpPyYJl41JYdnkKy5KoPCLp5qoaNql3wEj+xpA
	 Q1l8dWWSdfB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A261C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250068742.1728.17323060032841892250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bd6093151049b53ca46c407f5b80b014b4b1c88c6e89c55567df7d7df5e6cd
Date: Sat, 31 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672500687
