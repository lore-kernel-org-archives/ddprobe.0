Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7DA191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75585C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665534653;
	bh=79dfE2cgRsmYLCmpKzSl/MF/gZNizQMSJ5/SZ35m13s=;
	h=To:Subject:From:Date:From;
	b=XJ2lHbF1EQ4PxJ3qHHb9wG7KASEd3K0oAwTwl1/GenJK43NZRPLypC322hojZocBn
	 j2JyV5cc1gebZlsF2Y9RxythVoXf9E4fsE5k4y1AlraVWgzNyR6U+wd+9Wc6RU2WQH
	 azYSC7YYQCCioTXOMiggwtuHnXvdjZbRW8tcfyjQg371EQhKxGyHbosYW0fFEA3nfG
	 U2gpx0zobY+Fn57ce0pEkMWnqfVeswnsUSf3eP3lOO7ra7M3zMm7/UEgjiT9KUitvi
	 fYLbVGga+L6YAolR4L9Zfp/AnOxb3BpmG58t3EfNre5IMryEpznxZQyDUV0CEVwAjs
	 55/yUv6VmoG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5C9C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553465334.30867.8026445602007924602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b6e418e54d412ee3bb8407d3da5a9c8702282283dc83aaa10c9848d1f5f350
Date: Wed, 12 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665534653
