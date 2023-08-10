Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7D73D71
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C293BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691660588;
	bh=CAK4NFa8W81MfgiQJhUKNYnk5EYVQQSMg69Qi7bJqWY=;
	h=To:Subject:From:Date:From;
	b=cRHxy5NA3shcQUa4KYSsDlYJA8AqFpnuhQ9KaA5xyLwLZLQa+qqKrFLwmI6iq2gxk
	 fJK7Sm9W2wv0FB3s8Rb7d2mFc6hTLG5XXqanKFsoycyRM2LseShqhT0UWe7FaVw6NZ
	 OAC9DlGc63syB19S6Y2I+88FD89K+zKuL7oAsibGpual6r+mrmVW8gvBEIxk+PHsvb
	 JMJ96sWWV9tfjbMYu47WMEwF8kPR46xyWKFKvBKfcrt9gc5L+YZfAesj/cq3k4AOd6
	 0CfuEh1nXykG+6QMvEZB89Q1dFRymfWBTazi5sRHGp1VDXdgNMwcQYQGgQXSkU1hyS
	 wXk36HpwSI5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE68C001DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166058869.16965.16789760213737780811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e2a0cf38541a6e06d97e8388720b5af151f112d2685f7548f0b63745825729
Date: Thu, 10 Aug 2023 09:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691660588
