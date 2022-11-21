Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7A933EC
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D777C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669069854;
	bh=y16duI1c63HBI4hYxFM9vzJI+ObsDpEyVXScdqq4ta4=;
	h=To:Subject:From:Date:From;
	b=QdX9+qPi39oUOdn6ixh0OL4h2YTURDfeq3eMLJ/CBQZiPcqMaRj5f/muNs2/+XiHB
	 zZ6r2TXPXj8aeAZecjvGKcrDwR1n6Hf7Opn9G2M8pM49MbAFL+t1xFkogKaPdVOPqI
	 C2CqbD6Nr1cwumKQwVqIMiCz+6Ilm/uDbuvHQzJ/42D9q01u5pARdGFX9TQS9sTEkB
	 YZFZpqHZh94WP4I3W0MhkG4xDmpS7AVFfKEvFaLS7hBW0gRuSA9dqDzWK4rjurZB5D
	 t2xHA6SU6fF1RvNAxt5ckmE6TkYDLGu0UCsPPVoN8FrA+KYVbde0VLNXPGLgID0UHo
	 zrMlT5s3FzaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561BBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906985434.12253.4639800892010616202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5986b2482b2a16e8c4f095ebe5dc4b0d209eb1791b28ab120c3787514f63a876
Date: Mon, 21 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669069854
