Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07642F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5F5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671307287;
	bh=aEIDsUNaAG9IloiQLXlsIIIjNKgZJ7HnyrEfscZY1Bk=;
	h=To:Subject:From:Date:From;
	b=gKdEN+N9JKp6Oj7zoyv437GxUFaqaOWD7xcd/gfvOas2BJxo6j/Tr7uhB7Eewol2u
	 Y8fsCQ5vO6Ul/jb/+FSdHD7stP8G6FSZcWqNzXuJ2nEr3kLa637KBHIkHTOnZm9TKT
	 nbibRIZ7vQP0dqP6U1P1W2Ucpj+A0ijVwaebIJxfo9OqLFkO4XXgNFtZPCZngErMfT
	 tQE2mEWB0XNM7en71NZ8z8kBVV3n2NEA/q92D8OIgU8Q+k757pVU5YwOlaROgM40Bh
	 xq5nEVjDUWP2QlDEPb+VScvtQ87C+Cd5KW+SN05azP9joV709D9VqCbwRaQgN5ybOd
	 MzwtGYbFU/jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAD5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130728737.1426.2668923514092699118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b856fa5a2d78df0c6946c6a30a7ab578bae2de20217b6188d84e7fd1bed882
Date: Sat, 17 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671307287
