Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7823E62A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB241C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687661588;
	bh=VdMhPMXPGRc+Pzzp5pPzuGGP4s8icBVmwyl9tJY6hyQ=;
	h=To:Subject:From:Date:From;
	b=GZLpjFTu602X742MMLn8ss5DRb4JEyUwA4+lBotROtJrBu+TXPUrWUfNTLwwx0cPA
	 eOwHAqxfvhHx0aAQE4vEJwny7q5iRC1AZ6zIcBNF5KxEk1t3znOxSJyDuu2FG5++Eq
	 zrDzFUy6k7VA/2GG8GSfnNDm0SVRBmrivBdCLpA2QV0njr3Wn8u+0wP+u5qRLbMumI
	 chnPPQwcKSc8hTdV2CgqpvDGOx/54kQwTuoHzzCWl9nUk9cy9fLnBrhS27yJ7R2puQ
	 Uf5ILmTDsJKoEVhd2TkC6wcf3N9l6vfYCq/1mpvnSL/N03eTicuCSiyOHQZyWgWV2p
	 WY85xu6UsRJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7938EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766158872.726.11493663306873067106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f89abcd0da8bad943b886b95766d87ae9ad85ef829dc97f3543132d86ddbf88
Date: Sun, 25 Jun 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687661588
