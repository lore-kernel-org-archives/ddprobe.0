Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008411366
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673789487;
	bh=/VwDNeKTqox4v2FIft2x3QmTC4nGq0N+ZoCGBO2HWT0=;
	h=To:Subject:From:Date:From;
	b=H4K2aHFGH8El1AryMIv1K1gL0LOYPy/cctUQ7O2pdiTH0VVYXhVaUN2erC/I+2oxc
	 p8Vn0w566C/zo2vInxH2KssW7GJyE669SAwrcD8rUIOOs5YhreC8j41BJem1IGwSdA
	 PFeGIPdbfUKloxuFu0SlcHx2kUfYD8Zqf5T7YLI9eKCg2Y7sayiJSR99PS/blk3zBu
	 xfIpV++k9wcfsM0LJsRjEGyqz5Dxy/f5yCHUK1DcH12d2vVYUd2O1whJfJKjQHqqdO
	 7/s0czlOA5LRUph8tuA2EjYSQWZbOUOXHA2RCn1RvZ49iICdNh4iTr5LzzcFwjlAcD
	 J2YH+yH05jQ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F6F5C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167378948750.20384.17535849366118581922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2b62f3dc93722066dd96d6140f35d16c8e90d2d892bd0ef67690bdf8f73229
Date: Sun, 15 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673789487
