Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75A080B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761D9C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668979854;
	bh=lvfz8YtUAhEGhNzIKyohr3oKCzIRLSdrTkFHVwL75us=;
	h=To:Subject:From:Date:From;
	b=K3ZBB0fkRneWY+vhsPlnMlNJv03o/bUA5yfkf63retUhRvNFbrBUE+sohSDw58XQp
	 GMu1OKYloFen+C/rbiiYjhygEEkdqWnN0ys+MCa7tWDL7IW6tMneUswEIgMrOQ/Cct
	 TrC5mF3UYLrtmMBoRqbFirjCtmDCvuVU4YZoLsHZczTHQ/7gvAGvSZ+N44+vaDqtG2
	 OJss/pf8cBLH/Dq02LwPHsQb2LWNbDX3r4Iu1EXQbMjPS9HXy9UFtzw5f26vvt10AU
	 wzpRuSBFA2yStM+IF1ynkdBiLbENK0sA+6zElg6k1BbFZJ07rae8iW2grqdQzKXS2I
	 dRbva1nARmd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D4EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897985431.10983.11250274675089561451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbd685c21dc429b2e0beafdb855b7b21ef3c241183b45f1869df5d7185aa9e7
Date: Sun, 20 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668979854
