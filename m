Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A46B3212
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90C8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688340908;
	bh=GBYAk7hMeCKkA0BZ4qedeSGsfb6jNnsZESfdN2ah5NI=;
	h=To:Subject:From:Date:From;
	b=SDeMI2S8+i0CfrgOkH1SXdhRBL3GxS4c4Ro8h3VNh2+sAOoDBXEl7dYPVAqCwx5zn
	 iwQVxCcLWbnKsxlrp2v4g/wp17IjLWVkdYFLyUA6MAXnG1yGCh5BnV14Eu7g4EfJ2e
	 tj7ar5mMfcWIuRASwcECteFvT/6qDfGrFBn3kUZ+4jKtgXiyyy1Q058Ka8TS7t+gPc
	 OISiSRVj8aRmaqRVchiRe+731BdriR4wJjnFPd8vuY0wyn4AK96pPVxSliEzF8ldNj
	 BswQO1/++/jj0NGCwEdZdMmCXt2ZicKkVz2955ecKBzU9itSSrAQy2WCzfiBWynhhe
	 WA/BMvdUIH8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6EBEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 23:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168834090870.26377.7267233673052294661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55822c8d43773cc252ce2847666deb3769429e51cbe753b9994d49cfb5533f1b
Date: Sun, 02 Jul 2023 23:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688340908
