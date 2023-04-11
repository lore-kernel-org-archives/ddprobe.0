Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3512F21
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB71FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681246325;
	bh=SNmTChXAi8HmQLk7FzQM+CfWGupQDpZhbRbB5BS+kJk=;
	h=To:Subject:From:Date:From;
	b=WkKArxetlOP8kP2kV9VpjHVXwWFcOvC1LZojWEwzQyzUKexFMF5gEAHwPaKsal/Kf
	 I8UbYPomKxVzNcqMoG5LetlkEK9xoxI8ywkkRHEu/ZAxRhpNH/pGQRVhPKfe7+5+pj
	 +5kt1bw4XmKlX3c2n18FOD12GCCZ9RtCGzgOjRoFZyvinpgZ4gPTEzFew7Tl31jebc
	 yGACOqNgGn1Ab4Q3MKxs34mZIiDWhO1Yu3fVZNkF8eL9kmxhIFkPeqRI1czghN3aHS
	 6byqHvjQ4WPearbAZyxHWgsv7jXUOqMbDm2srJEcfbuOnXbS6G4i58drQftwYGA4X1
	 Qy7K5VLNWUugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E32C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124632578.3854.13206783468127590797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ac6550340641e95aba06c56726d813cd9c5a984e48510552a72c434a855dea
Date: Tue, 11 Apr 2023 20:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681246325
