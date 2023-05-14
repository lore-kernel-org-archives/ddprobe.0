Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403242595
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08E1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 23:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684108145;
	bh=peDWRNHFel7JGJDaWb7KPfRR/o392y5JpUH7BRlHFT4=;
	h=To:Subject:From:Date:From;
	b=bFqqm7SrqH5qzBrBzGBeleQPsUYdGradK3kh0REVYUv7G8OnnYxvfmCZd/q/fxxDn
	 AqbhoZLOspIS+EbcnVZrsG7hxg+kwEv+fFw1V8/RmLew2x6KHy7ahdydt2eskI6nGV
	 rXCvCqbKtZNJWphm7/9KUeAXqlVOf//qwcNYpndgj/wZVvV4JNKp1xhmjtdQ4nBWFl
	 Y511GuW4mHhUAxAdIMK71ScizVlZ398Rf+ovODbe7m8I3xVl9W8+N+HC7ZgWWT60xw
	 cQdr/MAeMOVVUWZzHFbLm8cFEWp3AkptqjD0R/ewzn15JS9jxggeI+KLbMUcOYTy5y
	 Gf4aeQL35gImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4AFC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168410814575.28665.18255323178392903080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85411fb211f13e140eda2d22a1c6c11770c5356322f61f5196d5b414af967ff1
Date: Sun, 14 May 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684108145
