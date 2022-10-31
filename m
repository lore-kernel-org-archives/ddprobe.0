Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53F433DF
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7317BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667238054;
	bh=8wnSBzJ7cLrSREBLds2TY7A80xnO6O2AAH3vWJsac1g=;
	h=To:Subject:From:Date:From;
	b=aIDE9+CwwLbo0BZxqf6yEY3y+OU7T+PZs8K/HgbBtGMjsLmCuEQurtIJEC61mUtUo
	 597Zc/kRs1fZfqM/WlPGKeNXZE07Y8X2LXSGTorWOUHLXp5WjgkCl0d5mw/v3JyZPg
	 KyV2W6nk4MIJkPkU49YzdWndrKTmA5r96DudahORb3wJoPMC3ZFwqdLGSvytJD7VSS
	 rfN9V5JWcMQYdxgP+9toPWu8Bg3QtwJZ4ZxTsNlI8QWj5yCWUlxA/m1ngpcotuqU9a
	 6hHMhoJeVOj8Ha3qBYCyZspaKySLr/ZFLbaSPrm/GDkOE92Lh0oD6sxUxkxoHWjyhh
	 lWLvvAEDOc82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B5CFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723805433.389.12438284500855977460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a014387f99bd2337c169cfa4fb4d53bdc9e47043c37b4eb62d9e6b1cdb22da6e
Date: Mon, 31 Oct 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667238054
