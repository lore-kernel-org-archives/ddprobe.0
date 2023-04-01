Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2D2900
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 09:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4804C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 09:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680342845;
	bh=yLBNwHeSWbDajL1KhRRXriytN1nXaCt22a2W2rq4reg=;
	h=To:Subject:From:Date:From;
	b=jmYUkNKlI1KSfMhBFPlHL1NuOXIfivufiBTZ+vqu7gS6QFrQArYrOcNzSfOu36Zs9
	 bMFUdl+dKoviqoW/bXWrk9OvrHMuAabFgXMphUqBef4fscDkoXsJq1Wion+mHwBglu
	 VCmOCA7QSjhAlZNYZzvSNaG9KZKCEbcG1kM8NaxmFoYNarpbKqyNtSV2RZjGeS1tDD
	 Cds8GaGu7Yk9ZbG4nDgC9X37XLhzHkSXY1ATnPMm00NmF54+hdFVnmtDF63CkhzYT4
	 Gs+zT3mYB0LLFiz0/sp1hXMmr0eFPoH3mTcXvhpB9FHJhNaP6IVyTk0IRnQY6sfq+U
	 LueLUzfQMld4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DC3C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 09:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168034284580.3928.2443986831279234306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed07bea842778413d8fde8259f157f28e9791865d3d26a01423e304146a5f1a7
Date: Sat, 01 Apr 2023 09:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680342845
