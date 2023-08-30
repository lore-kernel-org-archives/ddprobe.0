Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ACA7490
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CBFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693435448;
	bh=BUE5XRAe5Z3iMLu64L1rrNYzyKA5A4GrYGhQH5kKvg0=;
	h=To:Subject:From:Date:From;
	b=VoDKIe1MVypVie1gP1Eez9wPjFjh2rI05tqehNSPZoZvCgUAzcyAf0vcsIYAYpBAg
	 weCodExjd84FkZT0KKFjUxsz74/5PCjAnNBueqzmqcQAi6N73QjDfU0zLNPB8rwyGp
	 vpaCaxfD/VneCYmIlWQsXotR+U1DJ3/GeEzyChOG7GAyKKHlqkYNYvO4RJn0EDIHru
	 /x2hnbudheYTgOEWZ+Y7zpNHOBVow5tStHpsEanAUm2YF3nb7x6fHiUuvk+yqsmN5c
	 OyFEWAcoZjLdhYA4eWEoirAYWKy0JNB4cfpDynbTPUkVXDSczfDuaz4JcXVqKv3cpX
	 wCU60UWEIfrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40B7C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169343544866.6297.14254671763193574539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f06c8591e35e458c675cb0ce3231350a2e53ca2c17ba27c8071fafd120416f8
Date: Wed, 30 Aug 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693435448
