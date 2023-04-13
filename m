Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4FE626
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15438C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681405686;
	bh=WpJiQCMtu84/i34l22kbkc881BmIOPvqtvk03EKyueg=;
	h=To:Subject:From:Date:From;
	b=e9b5ahPAtU0YX2QmI6e+LbJ4jHS1bPT0KHrGkJNvKhdWmei4HyWGN/w5WBvEeieFy
	 Yh4tE9F2y3zLC3ug3WVSxaJWszaT63XHFQglhQDv1ca9RuZaj+VN+6LI5LJ2mQn6hm
	 bTYhWO0zJchpm8+IPpiH33WliAs4E+MQxjJEgcVIyVtOd9FEDyM9SsRGWTAA9D9XS5
	 /U7n0NsXL1Lq3rGE+pkzacuh1cJ4OBCki1nsf8tzIHHgnxDPYt3+IApnPfNLeUWctP
	 3ppXWJxdW/RfiHsPoy20EucgxYyE4yAA/HufZabFlMi7Q9Fd1a00HArjLxRT5UyIDo
	 Q64qwgaMHYcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4C41C77B77
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140568592.1902.977400872316478526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3639c2e038b8221c3a0d83148ea5c4bf1a9d67547ab6557224d14497ddb260c8
Date: Thu, 13 Apr 2023 17:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681405685
