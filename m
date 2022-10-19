Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD51D53A3
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C88DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666207253;
	bh=wAJVzidiDKedFrAxqH/nBBtSjXCaWcua6ft63fM4hAg=;
	h=To:Subject:From:Date:From;
	b=WHjGPuHe3HI6jPnZNYCn5MsEZBzMQc5ZptflSKJTunMLmU0qw7hnxWI2F9dlb0e1m
	 iHFcd5Xdb/YngdQRWsDnwxh2AWbUWSO8yuV6PrGiR4nLu77tMFyJTWuhCgn5YPKkz6
	 K35PLNfdibVprgd/aQduKUbR9kuUyKOKcSVs4bTmciDvaTByPJub6QtcdxZQ619uh9
	 N/xiAaJmnYtOFC0jAz5cmw17n3NElZUZzM6ooN2jPEykK+ryrij2hURpipcWfLJMFq
	 gU4wgWLxgWBLrzns87YpA7PVaoEP97zuLWY9747YZX6eaeUPHTrt4BLLXAix+AAFmd
	 MYxqlf+Y1O1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55795C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620725334.27813.9521860120298442890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be969175eb5c36cb7383fb6dedeb8f9b38370baedfe50389568e9dc617dab998
Date: Wed, 19 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666207253
