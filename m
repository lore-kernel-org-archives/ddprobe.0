Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F69617E8
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C9BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677301505;
	bh=2hgNvso1HzabqbkfB3MRbO/7Ww1FVWKztSTV67CC7XI=;
	h=To:Subject:From:Date:From;
	b=pUy42CEXKWFKu2McWy9Kb75CMrLyCYZacZqFOCkTE2kMBrRBY59LqjiEKaWHLFFVf
	 rTbjcaNiq9s4vzzhKRBCvR93G31QAokbmZN+VCwdk5p9Ff6jYcU9C7M+ZgNFx7EZkX
	 SylnklVNkrJFxSzB75V7NKs6+6qR+eSnyPkLuW/wQaV4irUhlHm1U4YwjKE7EOUVSx
	 WjDrCOO68eytedG3AlYbst/1iGCWsY6aePJwmN4AluqyaiiGXWE5X64H/bsurbXC/K
	 tlmr4g4zYKu5ZNM1V/nzZqu/spnT38indztbldMjfdhjUtMBZ9oFVSy6O0I0VNGdwU
	 jgiUZSffyW27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C7BC6FA8E
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167730150577.28431.11637814657326828491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf825180c42515a1862c8d117f0758cba8dfce4f826955d31fa1f47a2e997fa
Date: Sat, 25 Feb 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677301505
