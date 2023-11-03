Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD97E
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBXFFW7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 942C4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698993496;
	bh=tcbryasVaGzwDarVroShrHyw1qggW6x3vYI5+ckf5Zk=;
	h=To:Subject:From:Date:From;
	b=ZBXFFW7pzdhCOfWQGuRsqrvStnRmSy0vXTAiIz60ErPXP2OvqTuzQm8/zBrLh9tEF
	 P046N3Kj91OFkgsXXx1fw2zwePg5uN+PYTvfpy4x4WtA//02menFwZ9nqocGJymUhU
	 iHgHrQO2duDP0WVArxIkO1EWAyJL+Hs6g6dadu+PWxwiv3ulYEDfV31SMz1YrVe/LL
	 E/L/Xj7lTXclBZwHzg7/Qmvj6xsE43Z0xcXKmkt1VgW+L0dF5Qs73eh2guoZFsGlFe
	 yKDNRkbJhVTR68uKrqdjSmyd4FU5MwWwfAxQ125idZqVnbqPNiCLEdZU0Tbe5SAuqu
	 QklPX/+ePBeNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D56C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169899349640.9330.4925108556772002370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d00dd7bd5363f42c7b4fba8b2adaeef752cb1c989b78f66f4281f55cb97ec84
Date: Fri, 03 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698993496
