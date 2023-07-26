Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A42ACA4D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 11:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81DBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690369328;
	bh=xqbg/tyEOqH/b6EIv+pc9vJbNS4fkXoUo+HYDe4YCqE=;
	h=To:Subject:From:Date:From;
	b=hIagqtSCLF88EGmSicvvbah/h99etHiS2EGHYXwcdz+qkIzmObI+9FMYIwficvMIs
	 8v0IHxS153sXqNTBr5H8o5oYHewOsaY4hLA/mwEHVSYPOWChqqy6uEPvlgMJeUODJ0
	 uw99yaC2OVUGZhnphWFmmC2n6/yJaBpHNTXstdThSuwmpMF6xmAho+xa10fza+RbO/
	 RfmE/ZJcDvzUD7SzdNW+nHnkJ8Zde037p5gAQPMRnnxYVCP3O2suoGWdl40RH+z/DW
	 Z1ZM+qtG9hpoOSWc1YFaY+4A4GbtRbww3Ef2f7E9L1hvJDUvvT0HITNUBFwEX9rK+t
	 f1ycEsbyN2e1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF9C001B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169036932868.14683.3873568387306047230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911b0dbaa506a51f3ebcdbf18105bde9b41b1a081eab146f71f56364fdd54ca9
Date: Wed, 26 Jul 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690369328
