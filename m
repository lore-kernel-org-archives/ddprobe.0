Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF813D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5C3C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663164653;
	bh=45WFFtB/m943CLq9mWbJuO4ugwy824dBtEwlj07mtIg=;
	h=To:Subject:From:Date:From;
	b=l+igkL3F3eOLtmhtmR1Noh6MtH8Wl5lBRkGR4DDK0vCoTkvFHPPnQvel72taWC0tT
	 wwlUbbWHmVmj/wrClEcv09k7a8qWpe2ZJ2fgls1tLi3VbdYCLlPW3GfpvuHLzcsWuR
	 2l94Ain7vc+FJMwxVmsV9w34DjM4oDE1y1h/nVx0CW+FeGTltZwBce8QYa0HZnAFc7
	 v563mxUdRyEMaF8uTc07SCNi9X4+XfvWtJlvqs6II1dlrXcbEOwcqJthsS8kmTxbYu
	 qBMLgBgF+8G9QhiSg74BJq3IqzBWVq8nUyJRkkOi7w7vqskfQlkXze5+e/vL4kfJEx
	 Zm8MYuefCsHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AA6C6FA8A
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316465333.20889.8433214229993468475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d955111fca2d240829ad71132825cb6d6d1537dac7bb61ffce3a979664e8b6fa
Date: Wed, 14 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663164653
