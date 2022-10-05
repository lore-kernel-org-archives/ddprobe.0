Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27E61396
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAE3C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664974253;
	bh=4KsPPlix2LF+sIVgTEoD8hHhDKVXGqJHY6afFY6rOoA=;
	h=To:Subject:From:Date:From;
	b=oZcCcXUw4LR42arGayh0uyHbak184rZtgmphZuH83zxfo2JWuBAiBIb8/mMstBOMT
	 TPFINdDLz7bDV5ok81DdskTN1YkOxHNJamQdTajTGdrtHdE3r8psjNHvIlwGNivGZA
	 JGrUUy133WZeHKs4BfSPGV9NCA29e8A00uLFPycCYn0wdR/kelRZU3qZ/ascvjZGvZ
	 I3RuAzWyA6zvK5HpTbp5t39THEjh8X+BmYo/BrOBQipo6Ruy9QlmbCtbP0H2NHHPjt
	 H2RsFiN3K7BU0SKhiiHnP8Sj4CcHhHo8YfiNwj/XO1B0mhBtZ2eY7LhZFpf5/nkMuI
	 J+or1PZ9zkQZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EBCC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497425332.3195.3747363423801901769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d31f53a757e32c3e7b1de324814804163e1f84fc9fd768e8c702337f00eeb9
Date: Wed, 05 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664974253
