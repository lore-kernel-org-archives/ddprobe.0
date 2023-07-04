Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6445B1110
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA3AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688509568;
	bh=4u6ZDY6kUQKoyB0C6VF6ylAnmSyPopyBBMrPGgHPTcw=;
	h=To:Subject:From:Date:From;
	b=PzWXF3N5Sfzmp9pAh2O//9wOXS190UzYPunZtQttbQVzNllxx4Y2hW7O1Rssu1OFq
	 q4E0A7e5sVYGy41BFZ+wJzl2qYzvCYmCtBU019Dm14QHKeh1Ww4+NMKYRHj4FCvbv0
	 JveWu3CRWO+asNWyZteW+EuXzTTEfEg2132JN5ksV74wl4Cg81Q1fe2h3sWmK6BPgJ
	 CEIKqorf9R9vL8geW7BrPq9BKARf7lyeUd73fz/iHM4zswGdsS6kg7twVPF9KIasxW
	 xr++iA52B58Cf5U4kCfyrg/EwZ3Day0+B69wsgfdP2KaLZozoAgZnwzo9ec5qGgd5l
	 roDf9dQ2xRwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1AAEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850956876.3897.8047284394432994275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf1c115b4335673fa263542e499d6807a0f23b16300d0461f3d9ea47d2a25f6
Date: Tue, 04 Jul 2023 22:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688509568
