Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15634A11
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDBBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664389253;
	bh=sbEzUotUkHt8YDsr1g/fS3X7TL1o3FTUK8veU4+kSnU=;
	h=To:Subject:From:Date:From;
	b=ZMJ7lT/3HUUBWvv2kg7+pYKUQFD7OncxpiZf9+x/AvnIDMqBOpJ4SXeCL7noMi9Xv
	 UAJGdiPmunXfq/Ea8pOcQ0GwFAvTbrSlN1n/TVHbcPDPilW9epQ0Qxkwr7lbAidvF6
	 6FKcrEjloYraYNdvXzlooOnvF1HdJG+aSIHNd1hDjFLHy5jYAsachO9kIV0x/Lihsg
	 8FFyp4bMn9kJpFtbHqRdk/VdHoIPVJCjvqpCncC0+ybOhL2EStRmp8MLW+XE+UBtcf
	 OQQ+U0dFyXov20mEQutrt321EDdnQJOulDHFa5sLAFxzWyrARopAIu1/9c5MxJqyh2
	 AqJdJ3jHaEDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5355CC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166438925333.5331.2957624241281315327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af0d9e0ba1e06992a0e4b5af25a4811f28b0fdfb2991fcd9b99734309617f18
Date: Wed, 28 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664389253
