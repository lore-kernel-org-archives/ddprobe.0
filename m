Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB771867
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAGQ1/s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888A6C433C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698908296;
	bh=ih4pZbYHsaheT+HVAzs8WNPIDaLHnjwLbuxfLycHN5c=;
	h=To:Subject:From:Date:From;
	b=iAGQ1/s4tbynNFtiOSdHkacPPEcRJkmgApJoWkpIUXyNfdVJtZT1epejBvYosD1Hh
	 82d380z88KaTwERZa6WVYY8eIfS7goFY0J0rxb/gGFRxTkHSfc+Lv+KlhS0P1kp2rS
	 8E1p/nIIxLxe/CY5MWB5KzZfBf7NfhK7bVJe3iF6tpZMR2OP9ZY3ur+s3gtRhaRmin
	 WffRdLnGfY/VfVQ0HQlD/zUpFG7T+lmlNU8pg+JF0QF+6KCouUqvH8Ef05niHQXSKI
	 /hnSAvgOKOIcygeLf/8yxP+YafbaxiOHf3pYQU1bkH4UhMPwVl6uyg/Aa49KwbXUit
	 xnAIHBOMgP5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDE2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169890829644.29298.18062160730831727861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e2196db4812dab5dfb12b0865c0f6d393fa2e7a8a73398e40726b1f4af3bab
Date: Thu, 02 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698908296
