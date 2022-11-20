Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C037EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB6BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668934254;
	bh=Fl7eVlTTUfD3SLHFR1fdWJ5yXNzOZMW/bJkxLrSXEBE=;
	h=To:Subject:From:Date:From;
	b=rS1vLpIJCtz62QAoDOExIVm27q3SvcdNceErT4MjA0gvrvXtIqmg34CIAZ1IDhsjB
	 zuc/yNrHVXzeXVHQ2+rawlw5kcCLtXtF8KvdkuB7dQIFZaN8ADfzsQeR/i/tb8vED7
	 XatXf7y6mbzkMM+fB7NZy+Sc+oP4Niui1W+UE85lE4AOpJ4wU0N51/X4roM7tFas2I
	 gKddtj7J0iq3s99m5/OX3yG5C9qxV9du12uXmBpt7p0SePfiLo+1ZiN3m5GrmG9tNr
	 EhOp6k+rXXlyZpwBsKDDZb0JTa7o+fCn1UhmHA1fqRVBGokcUQPd1gBFOp1zrW1rAE
	 eeZXssVLJotDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C18C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893425434.8241.7102452485996980254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874e34e8603cc5169267beff17f81ae8960a3a2e8c81b732e293af5fb6a919fb
Date: Sun, 20 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668934254
