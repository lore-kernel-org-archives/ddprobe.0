Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603736128
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F47C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688498168;
	bh=Fd6U0oYeBUs0mMJ4H7ZDjJING3qthmXCxrjLS3M+gzg=;
	h=To:Subject:From:Date:From;
	b=WVfb63EniE9lVY3Uu/ik/XBzx1sHneQNjFqi+qGP0QJQnu8xYthIim/JNsaxIESVZ
	 VFeyiRL8TxR9oHVpE1ilIYbl42wEkAqvR3QX+/Q3KicnxhKlSkaOWUkd7B7KrU/cpG
	 dTGKsifEN5xtRqovXZBI+GgwhxIbH8oiSGU50LEBgwwFiqmZl80RrfmpAMeuGSvbp3
	 9cqdrGeEPot/hVdUf36Ow2DzjhUVHYovAQ7LShT1ezpjYueVCP3zunIELUo7TSHD0d
	 bNXnh8vhVhUIDhGGvEWMEvLRDSOhdkyMS+1wvh00StN9dld61QmvBtyKfDRrn4hwFo
	 fOKj5DHUAfRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4726EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168849816873.1459.3225393811577118866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853517dfcd0af1024998c9da336ae7f5f8d34932222675cd76504cc550e61b26
Date: Tue, 04 Jul 2023 19:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688498168
