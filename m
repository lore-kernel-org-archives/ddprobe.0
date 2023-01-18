Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CED2F34
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE3AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674085287;
	bh=G/jlW6DkZ6tNElRe6dyjU/GnMIV0vzeWrSIgOPgaBi4=;
	h=To:Subject:From:Date:From;
	b=i9kapkR3sX+2g15jB4gDCquPu6678HTFx1kOtHvBAru0twOadGBI9MB4seBRPhFEi
	 E1/2Pwwbs4sGtB0G6x+mRDAY9VMfKmv6oV6dXf+bxioAMYHApbTFKzswz22f5+nzBn
	 bE9t5efbr0TcEe8tQinwr15Gr7cZ5okllqvyMvSujsFpAjajo+AsIoOzuhI3elMuXO
	 b/0xqCiabAKOk+OHFK7imrFAKP6mydoPoiP6bct2WvvGNHftnHFGkPYG9b8g/T5xXk
	 CpwmoLxjWd2KOmnti8Wd3hLktPwaQ/sub414I8eARWH0nhVjsaXjqg+uwE+xyq/6GX
	 YyjzAoMUWVnBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2D5C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408528737.30109.12678639078219776117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c166411309a23788f78d930626e43ee4d95913ee03ca5463325e25ae4bfc18a1
Date: Wed, 18 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674085287
