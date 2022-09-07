Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D4C7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79243C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662522053;
	bh=1mU+K0r4gO4KVy3x8+Nzl23Kw6YSj+3dIVLh8zuy+q8=;
	h=To:Subject:From:Date:From;
	b=WYGAfBbmVL75r4ucVptSv30S6kQT4FsPpKrWr3ueKysfWrKm/vS0hIKUvvIK48QDp
	 JCuoydRamGVITBjMP2UlS8vkYK7F/uMVyKK7yNTI7DXQKTu4CbVutp0NSUJXz5Vp1z
	 ZWEVNGE6J1FryzCZSj1pxVyDAPT4GmP8oC49V/om99MfoHbbqIKrppVMGdvxhLqJuW
	 ob6MEzmRFlWimJwvzHbtNVlee7u978ou5c5VvzhY5oZY1qFPp0pKLKo0LQJdo5WtSU
	 5I/I+uDV+5OeB2iSrJcYZgGJ4mzX4YwjKDsHIjtvU7AR1lGufzc0L6x8XT3EPrctXi
	 DkdSvtfSWPPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC88C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252205335.4531.7311012427940760761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49dd77510cdccc0593122c7f1b6b63d9914ebd9f5ec13d0c2d082a9af8dbba11
Date: Wed, 07 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662522053
