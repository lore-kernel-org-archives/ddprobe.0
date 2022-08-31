Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E5F4C61
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707E4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661976053;
	bh=yt6uwZfh1g8ojP15+jnJfK/1AXLQS/IGfZLulnqLg4s=;
	h=To:Subject:From:Date:From;
	b=Ixc7Ax4pteHxs0iMcPyrLuXSaIg/KH1Az3HpsXzkJDX3Sd36eWFki2Mgg1Uof7HVg
	 4OUhzM6n3Y/V7MHQ1/st1pnACQFYL9ziRy1UxhHO9w7IzdNfMxT7YmhuArdmKkUguu
	 nRDE21V3daX9He8MOk96uq4pCFyBgB5aTGhksvffUwc7lYbB7KJcie2NaUJ9hgDnE8
	 teKdHoLn0LPn20RtKZTJV36Av+zb7L2x/Ng79obscqnbt+ZpiUsvS0fPwPFcVE25IR
	 ApXuqdwK1o21GH6ELlGXuPPfMQ2Yu1kx1Ql/8Ffgqb7bg1NMWMf8PNQKi+qijthkjy
	 05NYCnmSYdGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D10ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197605333.29528.13384403019976897414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7812cd4e82185a12fa2e2c77c87894be16e392b7f315cb509b447940d58b327
Date: Wed, 31 Aug 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661976053
