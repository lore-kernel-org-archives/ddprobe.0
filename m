Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DD0628
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C061EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691829188;
	bh=J1sjjbfrQVzBBNqbMN+rB3Z0D0fhA8abpk1DeUknfsM=;
	h=To:Subject:From:Date:From;
	b=ddl0nHt47aIzExa8FySeZW22EAeHtrlUD7QeuUVxN4wpWUQEr1OXkYOdck2zoZCDr
	 8slVjw52NnvFHTUHZrYEohk44VfakZNZ4uTyQXwiygORormhmF3FJZNRr38ToEXN1S
	 ddeXFnj1uWnkNq7PArL9T++anEaYD8qtxhvz4K8Vrnlp4H4p6yXUkgQDvO2AuA4ufI
	 6gELQYRZBgBS7DWZ5qAHJP9AXkYi0lEca1rOzv34Sf8rOAQTqdz2etc6m54Fe5RSKh
	 77DqDvBNwwmN/9isihNQI8dfDpb7qMEyg1bfx0sI2EwH6qb54FqrP0X70TKRBhQzZ5
	 03GsWbs+bm6OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F0EC001DB
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169182918867.21852.1377877779097126933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d0a4ac8e4ba4459db8723b49cc851d72ce83b517f5b32232c7c4c055760056
Date: Sat, 12 Aug 2023 08:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691829188
