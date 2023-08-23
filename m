Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A927C2E6
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 20:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B15C433C9
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692821048;
	bh=VvTP2v1c3iYx+KDMh2fvHsLpDWCUKP+456dPfmMAgzI=;
	h=To:Subject:From:Date:From;
	b=Hr6jun9hakWkDMPYXOjtBQXWx3P7K96YMiHf2F6jlk+Oocx7vKK4tshQevnBvwfU1
	 eKnO+q4YrXGQS5NL4zcsZDzmlf15s48odcw7/ZPs3jjwRz/957vnV4xbEDetuqgXMd
	 ZC4iD9We1RrWx+MlJvb6LgZ0nh0HvYimlhTX4cxhFE7bgiSRdg3M/p3oozqFrzWXj1
	 JXeUbMwn5nBEbznu0g0MMBhzLnHtauHFGmq7RC+HhPMMGsxmjXRt14HBmOblf/L2nG
	 5xe7Xv1JKLWfiQcz6QVKSq6KsyQxzmBDm+4HDOUp0yMbDyVVsmES4wkPrxvg+A8XV/
	 uchq0l/XVu3wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E19C27C40
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169282104868.24048.14876605923979302719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463566eba6fbb5b8a2c1a5226c38b633ef7270650e90ce3acc465cc845a7d4fb
Date: Wed, 23 Aug 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692821048
