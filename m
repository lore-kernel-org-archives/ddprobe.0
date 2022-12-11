Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89A54C81
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804ECC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670801487;
	bh=g2bzzD1vZVwJ+BPXXUMAmuW7simsRBAkHKxejs2dI+I=;
	h=To:Subject:From:Date:From;
	b=VwuXphcSBLgKRrRgXgeINRWflWTXSjd9FXOBzPI1dTD7oH2BA7QrUS1UCf2fDmNBT
	 hdL7P1ZudULzlyhdXnheJwAZW4gyrXjDP6amF6rve9+UH++5msgpfFCiry6F9OKOyj
	 HEZaIu/qnqCkCTkibDhoQf8I3X7SLPVaBbrT9cKbUyic5xNfDfqpvnFXgFsV/U5NI1
	 mCuT7jB4t/mz67ubXZvXmGbNOGJQGCQB46i7MqjtMB3mV5pdKOGwhEmOwXUPk4UV5C
	 y9b4eKEmRdGT89eZ78mVQUQb7IXgJ2wj2gVBKyjH9sqCv1esK+zyxkD6ZJxLFaY5Li
	 kyF9Xv6+G/Gwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F5BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080148738.22496.13138531112191639235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5f603345d1e0a10a1555ed64697c19ac8a0519ca6a4aa4b7203e856444858e
Date: Sun, 11 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670801487
