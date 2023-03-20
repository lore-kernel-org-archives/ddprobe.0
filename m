Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC6D1104
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6D8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679294826;
	bh=XNVduLhyiMbJtoqmdS9vpRicwVKYz+JPlXKuraZhjns=;
	h=To:Subject:From:Date:From;
	b=ankCtZLD1E9L9kT5ffARMM+53ru0zV09SPSbrHbcH2R/XPvPU669g/ixE27QH2m7J
	 yy1Z7gPdEu2V6MvK6YCv55PW9bSFqlPEyCXt9jmGe4miv8CM6FfYJo3USQknzyJUbc
	 d5eE9XEHzV1jaRNG8Hs5pIBUcemWKcMfxyKZHjZ+pL3uetNYkxhuKyds7j4NFJGdSL
	 CrzDnAEDp0UeS7OcTl1eyCfpNSZ2pLbKeaeSm5N8fXpPlCY//y4xn3/tg3jKb9g3mV
	 tXhk2eCu9X9FJWc8G73hxa63AFnhX4zgFQN2CS24RebTQKKHqW7+um5ilqENXV9767
	 unafASnqI9sLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E8FC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929482581.3752.14083997823755578980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac1c7c6a3632d5425014afc97892b81f8c2a3bbb3b59f1b1ea10b8f7d9c6022
Date: Mon, 20 Mar 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679294825
