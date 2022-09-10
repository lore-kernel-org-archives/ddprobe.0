Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6E65A94
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C6AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662852653;
	bh=L1L9yVHylGkn/rKALJUUFvYcWR+A5uUuz6+5hlWGcKw=;
	h=To:Subject:From:Date:From;
	b=GatCcu2fxC+oVzw6YDwgnXvsIDPbCgVC8hpiv/LQQrqiUZcYLd2V/lnOGlVb/qonE
	 NwhBIwsa/2OKWNNAGcbmv4kwMvKFLfzT/KmGHZr7np9vSjSIGh934RgbsdHeDh1Jsz
	 abSwf1KJtcvpZUwWtOjv7m3uI28oDAKixJh0lqYap6s7qzwi8+XTTJNfkZnyVREtxz
	 keT/cfxZ7hM4U22+vcxAV7cmpZZ/UZ8o1spEd8emxzBNbmMRHHKcbNg+p2fG2YPE1h
	 48LWpX2neCiOU6vuZMlqyILkPidocvrSRJDSh7+xo4o4h9SRPmsr6aqA21JdThtfLj
	 IqsocsXsS2cmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52230ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285265332.25849.1877198673663363700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9da5fdfe9b66a0df8bf7a0d9ac42052f8377606fe8fb5f24f17e80efc24af3
Date: Sat, 10 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662852653
