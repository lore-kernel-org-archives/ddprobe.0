Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE29217C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8693BC433F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674186087;
	bh=weljBx5XUe1Y9iA0Op5dWMzaddVWoKcYwWpuiz5i8rQ=;
	h=To:Subject:From:Date:From;
	b=nVTElffDWs8kkFACvqJyOKA9dfT4TG3NhQvTdA1XgbbQiJKg3iwNMy7EJq6ThCFPD
	 djlMBYXU61J3elMqGERqNMZeV654xDjYsKWd/KKtItMe+ar5QTdg38vQ6TylQwcnfQ
	 5OJYJhX7RG4Eave2wAqxfRr6nTlyUrknmLDASfEk5p+No5kUEPPDsW+gF5bfn7jEbs
	 2UjBtmVFQIx8AnFO43ghpoQE2I4tVjEIcMyamXvmO4qHgpaKPzFKnENKsy1C43oDfI
	 T1dk1xNUKdT+iGpE3uhNjBbkq9C5v0CK7HYPE/dbN5p5NwkQWcX8Ahb9sSmwrZuzze
	 Us0p0Bdh0OA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D917C38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418608744.7486.4592530869718676178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4eabc1e5335c5eccd4fdccc921083717a2df371762fa95e29885fd7abf40912
Date: Fri, 20 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674186087
