Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04F91FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908EDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673948487;
	bh=yjlGMmxo4D/B/ol4o4iyIX6z0efZVTSig3fyq7j8n0E=;
	h=To:Subject:From:Date:From;
	b=hxKW5XLw+UsljA8PlXSdU1VG4uAOdkkrUfc/ufSWRq8BKkNMzE2AipZq9q9AL9eaK
	 E6EwCtsX8BU4LOlASqUgNQUWz6CMBgDMA5L11GYJFHdLqQxjKEHVPWCFjuThdjRDep
	 fozfY2eedtCn/1PA+m4CLtS9Zoq4mEw132OWGeCBI7IRrdROeONGIeSlZAa/D69rVc
	 bBc7v+lfxNVaEzff/tmST0EQxnJAGF4t1MHlYWnuM2OfOiznLkLS5LSMq/sFF29XzV
	 n2Fjcu3Q9p5uN4Vvw54iGVlFqGgkpnfggnM7138Wk+RwykQv59zCMYLRBpYKboEhE5
	 XX5juZH1H6QBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5F7C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394848744.29173.5577742034153269398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51daa6252e558496b6c8bf0abcb616f061e93f9a2bdaa455a2bdd08fc3fd954b
Date: Tue, 17 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673948487
