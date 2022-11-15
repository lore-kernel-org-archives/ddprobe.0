Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5B62CA4
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723AAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668546054;
	bh=mq6VEnZGqXUg/i5uwtazObmgPI5C7OebRXTWntsI6w8=;
	h=To:Subject:From:Date:From;
	b=NJx1Ln2IqDaWjM8F/uDp7qK+//MKK4iAADrlmhwzdsvmE8QhDhRV76s8PhJW41j9M
	 cU9SSkjRnFvkQEPRWrZ9LkD9tqJQ4FIfbM88D4R3LhHcoZHxwrypHE9MbTl3LmPcph
	 VmVL0VzTcEzV83l0Q6RE3nDcvK7F1xbqJ79fKlupkxA3aoxpsVx1b7aSilGSvj23IC
	 yd9xtt60U9DNnspp0qTxGLjGCYpyoJ0AlW1h+0pmOLuskrlB8pkieAFh7/x/H3eShY
	 04ARekpbPYPBnC1535N0Jv0C74qoRrAnS8yAsJw47nwMIgEkz73nhc56OLwVyilbQv
	 L/uQ+OMosqS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55140C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854605434.3349.17849753044061693692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2842f852cda4d44823081b4b0632e55b37e5d742f063ec47d1ba619fa2c82bf6
Date: Tue, 15 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668546054
