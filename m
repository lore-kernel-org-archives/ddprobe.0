Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE9D360
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B5EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693182248;
	bh=JGmcNaLaPx6A6dwKXKBEQJayNZQL01vSaVLznY/C/uw=;
	h=To:Subject:From:Date:From;
	b=YBuDgMbul4n5RzTprVMZNLkD1bd6avLxb3sYYRPyXxQqwY4xJwbiT9j2KaRjj3gl9
	 pu7dW6eBUf7OKrECYq98GUgXArSV/0l5ynDHOOmHNF0AZ5bMYcx2Xw3EUivA6/ucni
	 +tf8/S5FxVSMBNf3xTCL9OUSoeE8Jq8zTke7HpG3m9wP+r/igTvhLBDgmnCzIXQU6w
	 zYDi7mCJA0FQPDuP4J9zr69CHqS6SJVHApxUT5N+GHxAYml2ShODVr444t2d7xmsF+
	 qzcROoIo7kqN1SaZbN5n2GPG8yoV9eWiZlVLJND34Oo2Hd8PwDjMXXpvkYpkt0yOdm
	 Ie18JKC3e9cLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1AC83F10
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169318224866.30451.13401645673969291428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b903ac6180adcbc4bc91069a4bf0a0f2c5f329adef38f4975da11803059ba40
Date: Mon, 28 Aug 2023 00:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693182248
