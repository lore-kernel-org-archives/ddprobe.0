Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5728C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC0EC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670450454;
	bh=Gi1uE0apr30SMV5oAYfgLEFpO9eSFs85HqUOwpvvPXs=;
	h=To:Subject:From:Date:From;
	b=YLZh+xvkojDfD3+pGly5BPnA4NOVsORwtJi/tN85pIjeKDwnOIpXW5XS5e8hC2qKN
	 6ZB3kvvd/I6WJDH2O8bi3LOZT+Ur1m67T5BpdYRhONYcgPVAot68uxtbqgtBKXs9uK
	 yqUNlbkM1woJBVKqf7YjpRmyg+nycCvqSmyKQZcZy+Vo7Jpn/jWopQlpRqm86KsyKF
	 dkmiDsg9EWufKz/m8UYFS6suijq1fR8qCj7R2osSJ8TegRGq1nzsPmkBqHY0548uPL
	 1atEHjfjNXCYyhUcrMVqQgxjcP7BrA2rXjodN/my2F0vA+bgre8S4kz/ivddD3wKXG
	 whtCyBk01fZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BE3C4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045045434.7568.6546960994147586418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba9d790ae2415a936222a9910e9c1f9154a4d4e500cc0528fc7fc6803346c6c
Date: Wed, 07 Dec 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670450454
