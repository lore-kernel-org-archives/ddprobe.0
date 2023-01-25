Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588FE10ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE04C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674618186;
	bh=BhJ6Vs2DZfSVOtAE2J12sjE0Mst8BmkQVsA4AqtBN1o=;
	h=To:Subject:From:Date:From;
	b=R/ylEIPkKqQmIQxUMN1AzHXC7jfQ8hQHRXtR1CH+67kYFyNl0HUELtNmmmrELvALz
	 0bimlnEXRh9ctJIk17rKs51rpDwGieR7XCkGPKERZuYaXrI61VwKl/XS1G27X08Xz9
	 KBrxjqrdzeVEaWEFyteLQcSjJpgLHrGTO9pSW/P9N8rzHGkGMHC+BRqonuppYiw+SP
	 jSm7ysk2mmexhTYj/B7nfHwXbvrR0Xs6zEkPSJ5mMUQ0X/G2d9aN4gVsewtVOMXMIV
	 Qo+WQu9vciXULyTQJX1vgfNq//btcLKkrEytSpz7Xip2BE6CohgWU5Ib1uds7rqLpc
	 YKi6plVZG8rlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD1DC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461818580.26932.16292817172485682922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4773850e91dc2189b6824791e6295c7d29819334b6c60cbf95ce82f59ced1ce1
Date: Wed, 25 Jan 2023 03:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674618185
