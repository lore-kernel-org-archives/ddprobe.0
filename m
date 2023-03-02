Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F94C7B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 10:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA5C433A7
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677754565;
	bh=e9U0hS3BN8zttCT4K5GabaDM7cOxruolYpePHK8zBZg=;
	h=To:Subject:From:Date:From;
	b=eaHcgnXz6PtGPNhJWnqTmVcFCMEkCVKnertFt4f4W7DdAlCRo5gwBTSYv9TtWuO7Y
	 nzKEx3i5td9z7XUHUv+sNPFoKTJ2BKIEKGicdqQWbyW8JJszBvEUfaggp+LTfuRg3e
	 PNT/Sdjgjy2g7AUavsF2CoPR9TW08Ypje6clhfrQkluRyI/JQKj8LB2mXwMrjt/h+o
	 osVfY+QJj2D/JGZIwd9ndLR5oXuVjRM126rdkY1ElTxI0pfgPNvyYFlFd9HSGxLUMB
	 ir9yZwS+xe3P/LutikTvVyoaTdBoos2HHlux0IXSjGZhyyee5TA1m5Q2Ut6BSJaPGN
	 JK27UxwxKZu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4854C7EE36
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 10:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167775456573.22988.6268296643903163045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b867aa830a29c31ae770fdd2150679420e5e83a082624b19c88239b8e5a049
Date: Thu, 02 Mar 2023 10:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677754565
