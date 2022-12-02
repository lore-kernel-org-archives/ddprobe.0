Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF16310E6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B33C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669962654;
	bh=ZNuGg2nV/IcVjxkvc5+Gbjzh1G6s1rC0OALe5wc1A2s=;
	h=To:Subject:From:Date:From;
	b=IPrKsmeFNiNoSnZcX2ub9wM0eJiNwQnA7UbxTFrxJqVGWDZ7Ptymwo+1IAep52KyW
	 9+5ffBO7IB3QTpT3TzrJriBGp0pc1hFnOS2OX0+/owZ57pBB94UtOeQzP76LYWYFEl
	 GxAXRCJek1+M2oPiPCyWl4tQqYNdGxkRYUnVjYpE5A/D17ymr8Y/V+2Ci56a7angiV
	 QEkbaqUrJJjUcpyRfIPnVh6Y5h+yv9KfFJM5Y7LJs4ry9dv0fQXa0Wzy9x5h3Jv8RI
	 IneX23x6BsY2TxBCz9lVzIXPdxS3GknbMQVU7etJ2y9N5qBZbI7PSM9cTNOxNh19GY
	 Tt+zJ8KnQCraA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E579C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996265431.25372.16584466423086422152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c89b4ad59cf64a484b1186f9022b7d321b54bd58e709e95d8bd7edea90b5199
Date: Fri, 02 Dec 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669962654
