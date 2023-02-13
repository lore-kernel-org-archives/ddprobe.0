Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6709C290B
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 18:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 036E2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 18:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676313246;
	bh=hBr7wNtyM5PDLiirke7FK932b0RiQajR5dRPg6sDPfw=;
	h=To:Subject:From:Date:From;
	b=iGT+5+QyuqwNWFb0HeSuCnTnxyUszuBGRMapmRcaFar4VrPbEYqVnjmCUSX9B9Mju
	 vxn4dlvHe26wKy8ccAj8gg6HtvRAcYrB6R59QzdLLpq6XKa1qFP3ZuabdqRby5U9y8
	 QD0T9JJ510Zr077bnB21huLDlYibO7RXexrQe+LF6GmxHIFmY69DF7PyhAcBQtk0hH
	 7DRxttx9I6nyuSiQSdeyJlaIWpe9NKVJo4eLOAnIxnJ3wFQGfyIDd7fUF1QodMlZUJ
	 xtnyagK5gFJb9Wm4iyDrrr7/64cytxr8BmWRzWNUDE0a4QNu01AA7o/Wi3ual+M5qQ
	 A5RZE52tBm2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48E4C636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 18:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167631324585.28324.329493853350061973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e8920de8fef070d2ea45760ab0c12c46ef7e1ebd7c2602d8507ae0ac13bf61
Date: Mon, 13 Feb 2023 18:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676313245
