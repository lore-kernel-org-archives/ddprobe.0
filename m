Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B1E1860
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710D4C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662118853;
	bh=Z7WhgRWwXXMuOVj3lVZz6mvQA4BvyeOhh7HipKl1pfE=;
	h=To:Subject:From:Date:From;
	b=IvmuPAvxOtQn1jTwPndbsQtqEO2VujTrXbHg5klLW2xzib5fm4IuSgFX/T0Q4N+vf
	 37AZJrj7n365lKiYX9bU13U1VwYXRrLJlEX+fLD0mDh4wrtg9+Jz7jAahFvUJmrvUz
	 DyZbRlw2dlq83OSAaD3WP8EVzdsLLDN/D41qA9Y9tJZGNmBBpGYb25G0ckuV0iPPWB
	 I/9OI9ZuGwQqCjL6ExP5ZHJ7vOvwHzcYvvWhizrLJ/4siLC5DJq57bD+BKidr3iRnO
	 W44Qg4Vgh34ej/icAL9STiep/D36D3GwVA8YAo+CodHt8m3iy/P/OZLAW8aEGXJ7UU
	 MpOlCx6+00OEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552FEECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211885333.14764.11185121293462543652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe1754522637136ab93a4c7590d5d5c363642a09aad9c4d6fee677e34c53cc4
Date: Fri, 02 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662118853
