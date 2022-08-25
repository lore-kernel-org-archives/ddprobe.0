Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07737B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E5BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661407852;
	bh=kUhcvMYxBh/YRKLRMLhXQHTxSu4+hvseg0531rnJ5ug=;
	h=To:Subject:From:Date:From;
	b=p/mzJqd/FDnY3xYBjorPMFawX8SONO2seZxzmwGX03W54FhTK6DEP6jtxIWlrD6k3
	 CeHkrUmVQtTMLInN2xEPSmYvO8ilzz4U+g7DZm725oCddjERdqDG9gw6exMNwsExd2
	 KtdTG6Fps9WzpJIyToJkd/rH6ofGzAAG1rMVM///taeE27d66FxAjdhdgB8zAg1NlO
	 FjV7sMBJnDPErujDvMPQok4GBlWmSU5W/b5iQFSesmAxp1/W8Hw7rTrD4SbrCVI+Pp
	 3I9nDJ0B6Z+MJ6ggNTq9V4oxd4OFwXEwMCKr9J+gJ4UfeVWpX+TmPpspy2RITSQWX0
	 maQPYl2Sk/6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C90C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140785234.6240.2915820160857658158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc25f31ad15b7a713b81ca6f6e2d745ac837d2a99e30b0c5ed48db229fabb95
Date: Thu, 25 Aug 2022 06:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661407852
