Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1C72C1AB
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UratEyhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88452C433CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699984696;
	bh=uJy141FXtajvETDHorBAKzfJqF4XPW4CkM9FWZmjIx4=;
	h=To:Subject:From:Date:From;
	b=UratEyhle4JAaOA7XZ2U6GfiJw9vTAdlOwz87X9Yq3U9UJ2pqLHPQF1RJlrD/NsdG
	 tjCv5ekKwkFF05TxpIAayY88zeYlGxiIlsRyEKiw+32az29fjNrZzIwvDEMAr9In3u
	 bD+yloy4+FQvod5senW4jG3/57bM5MmY/2W1YwAlM/DB0GCE7RntTN0hBJHeCP48s4
	 oDFyHblQFkGv6fadRrHeUVnfbJf9w+F+gm+BZNFBmdNjQtt4SGY8J/BA2EJwpIQmi9
	 4zGBPVfRMA9hoBsXSHoTl4pQX6xvI4tdf52xt5aUt+XqPfV2Ee7O/dkXkwE6ODh4BB
	 3VOxpFZjqLDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E54C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169998469641.25214.14074840845482312887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac2ea534cf77736df85b9b4b7df007f3a56bf7bb887f7156965d6fafb0aa864
Date: Tue, 14 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699984696
