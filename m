Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35FC374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859CEC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672725087;
	bh=BoDOYxUqqTZtc8EDsVBHb2EqGS18FG//z2bsDoX9+r0=;
	h=To:Subject:From:Date:From;
	b=HszDVKto+SY3eO6FZP/Mrj0SQbAFSpSiu9P9lT0cqDoqZCU75Iq+Fn0CbZzYwD+g2
	 lQ0uznAgco0ykz4HKq2sh0dRe1lrpAhjGcJdUagvYnxG5CHcH/lsxKz+BKA/7KeM/6
	 +7h4lbA6PrtzJsE3N5i7GeKVQxUwitQ4ydaJRkjG6WoaIM/Kg0x7QV6jlzXMER7nC3
	 ZgjwyF3mA5hSECAwUNccCOH7Det+pG+c9KOrt21uQOskD2RtsdOke34Thh31UVnr6C
	 +dhPgGuJw2EXSFjtds5reWJ6i2DMu4E5Ny432E2FAt8aXxo/1b8iKHwoQ2ZKcEXRZ2
	 jcUCNIT1aNPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65785C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272508740.8390.1224527754302925481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72f2028d28a263d5e0c553edc9b5b21b31d0026cf3779f38c4a8784057f4803
Date: Tue, 03 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672725087
