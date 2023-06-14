Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7927E101DD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0476EC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686774429;
	bh=ZArzKLAz7Lm5I4RavhUnl2DLOoVbzyMIpa8Dqwu5Vr8=;
	h=To:Subject:From:Date:From;
	b=CsyWQqP72H0wItL9nQDeol0goyuvzs5tEYTpaJiUrUYOZUCG3iDoMYnJvkne6BAXK
	 Z7dmYuQWkWZNSVLd+KDp4g9Xg6/FxIcRL/TTwrhrO5YW3yLCjZ8/ygBIYn2qAjA5FL
	 QI2Ekc9utIo6d2uI+kIru1R2evOhiJecAB2gRexOjRhyUPsYkZB/lDNftbb+7DZB8L
	 JbXJ/hea2PjgGsGXhOheUwuoe2gFtHGzCg8pPii9Nb7bhNFIBR5GReu3Zcmk2HktHY
	 oKZ77f7W90QVONIk2Sm8GZhe2mcOeLbGClEjHx0L+US7KnzltH/tqr8AneEbG/E8iw
	 SqPPV9y4Utj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF32FEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168677442882.28269.1272211648717706606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d21ee478df50d44a258eaa220af587e98f5eb2bb541bb79b7e067afd2c9708
Date: Wed, 14 Jun 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686774428
