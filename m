Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563EC15A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 073FAC4339C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677205506;
	bh=IRfQOGdRaJLDpqIAPaxp57QXR0ZhHjerD5EBJURRAGY=;
	h=To:Subject:From:Date:From;
	b=njUBBb+HRD15ktFWtRnKEXAfIOsKdigH5SMQTtk5a3Yl/3eE9T3zw0ngPk0CKDwT7
	 RSQmDkQKBzim27RVD061C2o6LF0DPeZv3cHq2q97t+7udNXIE8Oz6krzHDiT4rO2iD
	 BlI2sEKfDtdSxjqkM/o84zjufs25g0elaZIvFthI6rBq2HyoxNMaLrxaNroRafZ5f1
	 q8mispTt03SNVIMLjA1JBbrLx7QDJDNUxOrGiY7EL989vKsmhFJy9Pj4s5S9kMOM52
	 NszhQu4yILJzmITz2dAB9W2HioHSo8jtIqqDXWqt8MbMb9aqYDAC6KL+/1N2fYhyOT
	 FZwqETVDJgFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E06CDC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167720550587.28796.15061282204317928115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ec993cd81036a88804578293f3d61396b730487698cbf693927b521099cb5e
Date: Fri, 24 Feb 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677205505
