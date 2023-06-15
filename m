Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69165EAD6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82F7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686853748;
	bh=/qQj2NoSVVgsLKhuJBOmp5b3y8NEpxF13HOlFJrnhJk=;
	h=To:Subject:From:Date:From;
	b=g6PDTVt7nQrDO8o3wgtmMkta4HT471TS7DUZ3OCGiGh9fH51LOeSxQO8ltAIvm/kq
	 TP8pBxnljrF6uoa672/6Om9FKIw3RtaN/HFa/HHbHykK1rQTgpJPi9j1erQodMFVDU
	 2SzrGxQ0p1smKbMokjzlK3QpP4Kmbix4lfxDVO01Y+xtj3/Z4UyJuLO8L8dKH35kqu
	 soAZvQouFhtzQXRKcJmiZm6Pk9HK5c10fv+YeTiKAGoc1fd3xdaUNKDKgm001fV/P9
	 vY8/Tf0gYxOCTOjlApvGgZaWzkNElJLs04IAHTYJQLlRTGTGjE1LUJV8pnb7XaJYvV
	 BgSzPbYGZqZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD1DEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685374869.16638.9598361391158929500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772f4b1e9ddd1a22d0ba395dfd4cad5517ff972421959ef566d07618849794a0
Date: Thu, 15 Jun 2023 18:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686853748
