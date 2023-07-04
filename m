Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39623847C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 21:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12989C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 21:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688504769;
	bh=YlamrSNwzcxRWD/XNoWyU6lmHYkK4UPO4vaKVvjIMR0=;
	h=To:Subject:From:Date:From;
	b=T0eiOjHAwWkcTt9m+ZFR9B/UDe9SXXc6H8vEhlop7JKuDc2ZUmSJ4OwNf2EuZ8nj9
	 mi97us8RwCqDHMFAYqKL51QIHu01Nw2yPcyWklYNsuKm/C6CkLjmaSQ1zsre1Je1v3
	 nmRskp8UOVjLf3GROfzzJR6Pl/MPKjdJmEuxvmfc9BwScWmkngtS6jA4HaRO8ptj+2
	 Ah8xLPtudPECQDg0G3MtCs30uwWy2iD7t6BoG/CBRJsCpf6aq1SMbCQFJ0rmWaGFWZ
	 wLK3ySAid+jg4QqYP/m9OLcmGkrj7hLX+gzqQpOgnQGMZEBqARXvkIzd5dBqPrU740
	 nZ6d+PUZ53rrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E88C7EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 21:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850476894.24783.15317981453557161500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed767262be76bf466f51843a94a27808472d79274a8d52c0b0674d56177c373b
Date: Tue, 04 Jul 2023 21:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688504768
