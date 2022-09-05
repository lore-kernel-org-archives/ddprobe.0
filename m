Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12DB7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819CDC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662350453;
	bh=WpxiwIpjRkk1dit0yLEhJBx6N5+dNxmHanw/YfsKKP8=;
	h=To:Subject:From:Date:From;
	b=lRwZAOYLJiUSfOA3yN7r/vUFd87W/7NaJ0O8D+H5Ddgr/yM/bm0dBuOMXrFm4jY3m
	 nVPrMOpz6Dy6IXSK0RpvAt62x38h7DDUNESI0QdfSJNXyotaLiX1XOdjjfahzlUQ7U
	 PftXfZV+bFnZ5km0jxdTp6pg0+rIZKsld+oWx7Z8bYaUiwFPnC/UjZDmroPxyB+n7g
	 kN720xwq5BqwT+emGdv7Dn27QG7ILn2cpa/Gzo4iG8qqiEM1q3B5DB0wEJxF1bsnG4
	 7HEdCyf8Y/79VT5Z6Swg45AbCiwoQP3RXuZe/PlwxdgSsb7lWsPMiwQx2OgUNqzHOl
	 7mK5PaE9uZv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EABECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166235045332.7446.3661267507672560090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c6d0d35e0bbb2de51ab160a666c0aac9fabbf46872c92e39f7dff34c4d458b
Date: Mon, 05 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662350453
