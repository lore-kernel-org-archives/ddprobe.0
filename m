Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B3A7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC731C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682297526;
	bh=04xR20sMbceQ9qwOmaNnIXMWF/pSsC34BxeFjdoZyWA=;
	h=To:Subject:From:Date:From;
	b=uN6WHT6MTZKLaKyrAAT9CSOE3v0L45vwe+25Uqcn4a1ShMhY1El/kF8pFRKopGeAR
	 hBcWgHapxehlqKFSqbvKBMAgU2xDiPZxVhJhOdhZ5qixFX+C/b0UkPj4EJjNfcTYTF
	 9yqfeCz6kfMcx/QBCeNMcA8eNQY6E9kx/ug54zltqoBR/nrTJk9F/WFCVdESaVn9q+
	 uhk5YZKz9TLM0GSr5dfpdYPW3X3ofrVVzjpUu3yeFUx+6HUHTxNybtoxtdDerXc4Dg
	 rb30t7gthr+ZDMA/LILVzduLJHiMz56rMqgW9jGH0aBPdETN4FKQy1pzpqr5QluXoR
	 M2/tZzSn3RsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF43C77B60
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168229752580.26091.1573984511827784940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb62dd9e5839543cb43e1938b9bca9c7be821d20cd8be8f688ba8703f15ec00
Date: Mon, 24 Apr 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682297525
