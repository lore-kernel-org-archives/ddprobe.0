Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29E3C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72290C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668880854;
	bh=6mRqUSCkn6mCNwvjGkbedYZz5jpjTjkARTvwqcQjEWQ=;
	h=To:Subject:From:Date:From;
	b=DrYkjiJBGk7ACO+9JRW/vBnJC5lq3u5rDoTV4Eg7XGaF7viwDyVcguxRbgJ8HnXjo
	 m5Z8nGevDU9/dDbXbe9k0dZ+tNNZQCK4ngMoLc0/Mlgm+2Tw7ARMwFb4ctI9/bU+6A
	 RSJra/GJplay2phOiySTIvsy4YvwhwsaJs3lX0akukwLKSsdjjZhaun9lk7zXmB0Jf
	 vJ/JjcK1q+Z2HhQ7KgSPYdNlMqHxTmMo2+UYFszTzSN3Dk0H3tu0bH0LGkDDNV7j8b
	 8e5188R/e4jbz9WdWkbkEiTz1Vz48EoP3MxEjIIHVI14zufcLhSnsfbkOhZHkg6iU+
	 vh9xd4gdvAskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59932C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888085435.1665.14042985130742689526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a30ff8b3dc42bfdc9906409e1408d70584f2514635fd08cf8b52fa542770f55
Date: Sat, 19 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668880854
