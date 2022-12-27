Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD56A56
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844FEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672134087;
	bh=XzUf70S7ETnxvo3kGcRTwsoXXgzu+5lN9BT0GOqd4Hg=;
	h=To:Subject:From:Date:From;
	b=otl4f/xJBOH8AhPTU/qJ7zV+/e44BB54awX/YF2nxQjcwSa4z0co+03UO7S9VGMro
	 b6QzL4ZPGMYZt4haDewPIJN1a5xJcPj0W5cKS7WNA64beOxjmghMiklBy8n9ugGYMw
	 wtfY8IHIsQBrrVhwgoE4GHj4v8W3qUppt0g/2MTi25LW8/9S1EbDl6rii+bLSaAUo7
	 OQiDH/6taOu4gDooHo8ABOj87Dvz0qz6VSU78yPHLmKwzmHHz9OtxXRT1Vb4S8n4yh
	 5x0wy3dn4EhFL3pR3M5/Q/m1YfE+ptb4YAL/n7ppedpv88fbRclmAEEQNT80i/7tJt
	 aOAXbQ8kRfNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E63C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213408740.24590.13525957782723964700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3487c23f9fcc8f9797cec80550d9ce7bd414bcb6ac0c2c93a8a002e3ba790e
Date: Tue, 27 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672134087
