Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DD37E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67E0DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663549853;
	bh=pDDEKnT8g97mYsdV0s4N/63+vYjpZOU8YIHUy3AOeTM=;
	h=To:Subject:From:Date:From;
	b=t/27s5/maZ6uRbrYzVO8j1TcsE4FppwUNfZExkXroMYGOvQeZ+2/2S3gqt1nUmZJ2
	 FU0yqK6mq7iJ+jW8LrmovnwaDl4kBL36S1e3j85s3iEdVpUIZS8/QMpqriXZDmFDWU
	 MS/v5nfHu8j/aJxcviWBPBl81/qM+H0tBaBoebxA4fF0xZhGESLmtewOwIl0c1zj1X
	 R+J1uQP3ZYA0Q0IM5NUFdVNLpGOCzb/YMyFo1bGRqLIP8Ww3i/XfYBU5uxsKWnzA+p
	 SxLD+kWwvyWXwdCwb6GAg4KYCGp6Y3IrfBbVaXdwUnhghVtoxoWhTtna8E5syoz7MD
	 KtqF/1rpfkjFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4A0ECAAD8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354985331.29991.7755555179339551849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc662063134c42d7c769804194e4b99b547b97cea5f3c340b8472da42c2bf9f9
Date: Mon, 19 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663549853
