Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8421427F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 10:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C25C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689762668;
	bh=/F34atwW3yu4nQ65xrQ+yGYo942ob6SRnZgm6O7Xhwc=;
	h=To:Subject:From:Date:From;
	b=Yp0981iV9SLNFqBRMh6avnorIaAI2hqZabKiPComf5vbn+lCgvVoxgBp8EAULDmTY
	 aDWrcV9udJcaXuM2c8sXj1Z9hzQzS49VRU+amoSgKI52dXyr9Go1fTMkPa3AORklKZ
	 OuNPfLUu9hL75k+8nHH8M28uDj345FeJUxS99MdOs5ByavlJO+yYJpY6URQWXJq+iy
	 n7xnna3fuocxP39H5agGPZuW1D9b9D4fgNuPD2XLJq4hw4n61GPMZk5cujGL1XL/cE
	 i1etza2m/dDUa1BeBWBJKMPjmD2ohUJejqWFyIfyk+MnR2ePXiwqSNVVehZjyNtE6r
	 bbiXxXGL78sgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BBFC0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 10:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168976266874.29506.7281376102573878506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a711c8bbb1f11678052c6584ca11ce290658d5b95b116fff55f9eef5d5842070
Date: Wed, 19 Jul 2023 10:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689762668
