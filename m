Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AC212B93
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6868C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690270328;
	bh=jDWIqa/oLZJoGk8EGRQuL6Ty/I/l3HzHdAPJwd1Eggs=;
	h=To:Subject:From:Date:From;
	b=Prec2Ixywrqi6LACyujTrX6QQayQoL6VU797twEA2NW4Ui1o4lJ9stNnUBlknVUs4
	 068nQXitbJp/3OWvdVivvvBdn6slcPGJl6cdcfqclvcWWN8m/TsTSsEtYnhmZm7EQm
	 yDMCvkG79njX6gG/83tTs4VHO/DhOfwbGya+qWai1aE8JIjT3RHI5a/EvXQ39VDGkR
	 4l5gT5DDd1etNLUTU7RFcANDmhRUo33Rdmss1RppQKTg6ItNrY4yQAa7GYPBKTNbtc
	 uQIXUzT+MYOgpU1g0VqBXGjrb1IHCSg4SNUROt1ykq+SfNSo0ItOzGVZyaiHPryQJw
	 u8OBZCNz66Z4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84F1C00528
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169027032868.6056.15283215855314192418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da5ed51d6499d79ed371fdab111828fb04fdce5d6ca1c5702f8bf84f65ff061
Date: Tue, 25 Jul 2023 07:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690270328
