Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FD310EE
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF0C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694212448;
	bh=vbqhYHDLcDmg2Pbd0YQWDVz+oqYlET9rJw/knnhJl0I=;
	h=To:Subject:From:Date:From;
	b=ayrB8EFJlGUy1eu47SC4FBiAIWIWbCYhtoXkDXBkkmX1ytQhRy6yb7aiQ/OP0dGut
	 bDUsWcJDnN301p8FfIdUTN3Mk+WkH6xXgjkw3jBWBB/9gZxI/g2Y8UvSsBJFV+0AYm
	 LJBy1hSp6oLToIVtGrBM3pEAUldd3m37ZaFkgs8/MgvMbddRUdUNtRyeyzaykM0zrm
	 QK8kMz4HrmJ5WZQ334j4h0anPij8JrUQhmAsw3k7Y5jkXqgIzXGzeZVcssnIp7ihIM
	 eekAM71z8PJxbHN/4koVucL5ls/dMQzIDzEBgGuM+S9OzYrU2FZcZG5Le+GvqZQn1g
	 jMa+dTVeXds9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9EBEEB570
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169421244875.25779.2965095601900979785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d55de6d5ab3e58bf04d77eb2c57cf4037f106de43fb7373d32026420f833cd
Date: Fri, 08 Sep 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694212448
