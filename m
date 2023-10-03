Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6552421369
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80C8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696335368;
	bh=UQQRcXBgNxNzzz2D/burT9lHXBp+lJMlkQYwGnqcFDI=;
	h=To:Subject:From:Date:From;
	b=tVxwRKbGxCAgayDS1s2g3oxnPlQ204vzbIWd6ioZtsSpVBxPBKHVp2in2NhwjejiC
	 En8dGVU07UbO03+q28SoEuEby+gDbC1tPv3hX0oizVKswIeBPxxVSqqRSsgYGpDGHB
	 D3WtKcMrqMvY51xgEb7o743C37kB7boqexbfhh8Tf4ZTqy9tX35BLWIGvDPHGIZNpA
	 xxwsJSUWWT5S/vgOuF6xVR/JueorVhNi4fAW0CMewDbW6KNkAi7RDcAhtaWOM4e9Zn
	 r7BFAx01gjp+zfLok8QsTUE7vhmgm/O54yaKThlVUi2iovMjQonaR6bBI5nAbzFYpV
	 ic8ug5n2q+SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCDFE75452
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169633536871.25484.4022901824141392828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d71f1a82d7c2330ebe59e60d81e51212c38f6ddf36ea9b3b19fe4a4b7dc7a8
Date: Tue, 03 Oct 2023 12:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696335368
