Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F551C01
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71320C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662847853;
	bh=VV0tCEGNA7lVcySgUp2IuhLBfs9PqjMsXTyPgFoJUeA=;
	h=To:Subject:From:Date:From;
	b=rCUrzwj2zaL4akX6lL+Nupgdmb8E27JciKqApgUllgJhs5Iw6NFkQbhYhq9fTbPaA
	 +VeWDUpqPMNvT+GLcxKQe9F5ltSdTG6maDwXDyUGvKz4aCkU5MCK3q5Hw8CRE8hMZb
	 qLb4Xg/bHGnHGXLeMWl9tJMFIz9PNbkhMsIAVwJH9TaIvlrHOSBtioyaMdeE+OBUxE
	 QbVI9L9Wc9KNWn1LmvxQEbZx9sRvbYYaObmoPQMGj8AIChFQ+7QQFpqRBJlvanTHFl
	 XCcTLE8K3HyTPgkNECi6mg0++dLNhKmI/iwKMvO0mLOpvl1dq2YoIWN0S61V652eIm
	 eKnC79+blMxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5933CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284785333.27395.666083928135798526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbee6db70f4056557967ecf06ad57e7acd1500f9d955a4c24c939a67de721356
Date: Sat, 10 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662847853
