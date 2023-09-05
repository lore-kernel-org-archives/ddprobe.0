Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D60375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E273BC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693875248;
	bh=swqLo+ccEp/xVFlIgDxr246i/PAxR/99nzhfvrPn7Jo=;
	h=To:Subject:From:Date:From;
	b=H1H2l85mdWGfw0wYrXDNoXT99uvXIL5HzBx0OHay5NuKQHFizxkgcPsZaKgiz2p3u
	 Vh2+pmTGp/HDeR7YUGRch20hhAsWBvhIgSo/3boZxjafmEB+vvDd7U43J7TGTbtkZs
	 gksr6tp76cQUd2+ITDHsUZYFUJO8ZZ8pmz0RgxdDORF/12MD/iCu61jdMfppxewx3h
	 AJP9LGBtmcw5RjxbOkXNzNRIxRBvhzYND10laeZ5aM3NHCg4XZ8LtFO+1u21Ey/jkK
	 oRxU3xK7IkwPaLk2RKHz48vfbt+pTTX0E0+0Y/28RsSBoYf4CUJZGCSgT/8aH3P1Ef
	 orr+ujDkMlHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE1AC83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387524869.18078.6836210472527719805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad94cb187a416aaaeb6cd37186cb9fc343afd6f6ca882faf3cad115a2847a1da
Date: Tue, 05 Sep 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693875248
