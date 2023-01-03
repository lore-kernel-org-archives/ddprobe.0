Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA73920E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF39C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672737687;
	bh=XaPVcTFXtfI/5HfP4WsFJgN5Sex7eviFtsj+PmN+cOc=;
	h=To:Subject:From:Date:From;
	b=CjB6Ela9g4LvYQYrb7BBhSp3shvSF0wX0D4BklgMcelxg+ZH3HMlYrtJyTLnuk1lu
	 x85K4QJwMzrIscRroTedY0XgrsPeSFNvtnLEqKjjnzJI5vNZBSkMx0zpG3JQ7VUbQf
	 13Q6O1bt1VNy2HfYy8X7+Pa5a0CJbHU/e753w1FuJOjSzmcoZHS565XeaBwp0gBJ2D
	 ws8aX0oPI+70ATWiGFKjRcIUo5FDtAnJ0KsX8CMDDh8d+fe5NOJNIGqT6/RVuVMQBJ
	 GcvqGGqtBs92Z12DQPwVkHY8JC5U7RkIt8e/1u0klFbTRyOk9/5l78YwZtDAgzxZe+
	 RCXSRERTkb0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6468AC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273768740.26051.351623917692134395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2667f2321f6aa32202b77c771891cc221b96950b565bb6feea5e9627205342b
Date: Tue, 03 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672737687
