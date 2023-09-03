Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB9717EC
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A13C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693732448;
	bh=1gDydes3b6WByAohXTppIUj3OoRAzI8HOvzKEFXoRA8=;
	h=To:Subject:From:Date:From;
	b=VgoLbkws5LEVL/gawatZVjAaZ7np6pSqKLg72p+PjwfGezVGkUBeW6yCl3TqYVPWg
	 uvQHL1wM0FZnOo9oA7oplzzmkjpTmNDa6pioSdIyV4+hfg7YCtGvkomyfzcdrM4xj2
	 B6nomlF+Pav0tNTaqkErfPlvHrKAjH0k1QiTXkGOAb4lC6y+A3yy39ASOhS/yaASkG
	 MnjsvffLbEDKnDoiLXK27F4Troq6nrk+gEe3G8UvsZkQWstd9MKdOZsXhyhNMJDAq/
	 MXBVog6lK3Mgc6+dW8gKMBIXmuE8uUVEQJLjO/4BPxm+hrL+s78b74xAToc+VSLvIK
	 C/eRvMbEe5d6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8C6C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169373244876.12901.4898884659137315510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614f36d2538b6e4c2173fa25a4720a41d3cf052ec0e7b176c9f7da3e8d62d2b2
Date: Sun, 03 Sep 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693732448
