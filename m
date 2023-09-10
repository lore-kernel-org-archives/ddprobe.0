Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A3CA49
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC142C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694335448;
	bh=dXcmvhH7JCtwxNri8Uy8hEnIeRQQ1WYBjHohmS34QJk=;
	h=To:Subject:From:Date:From;
	b=PNA1+tN3XvDHCjMFHYxAPrGTgigN3kJSarwlo0Q7N1e/VAB0A2gP2rnwMFXcKUX5x
	 5mkmT5F2Ie/J02/Umg8qPlUIBesdzvR1WRQbeOxpuFz1aiSCJGO2/qIRMYAwbSmk/9
	 riIujwyNC5CKuPem+gYDy35a9/J9eVSiCGFOftwCbATRFBs8a6Z5dQsBggUOjke207
	 2Jyzl2XriMBuf7/gU5HvSbJSVMhi6w0E3IaP6mTUlYmaRxQ/aLEnEFM9vernTWC0BF
	 cTcTTdSAQpvsPU7HjABU0jq5cNIEsqA/JHJ5Mxi31ld5Y8iMFg3cr0iBDV/KN0eOXU
	 I9n7hVLvgmcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4DAEC8748
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169433544872.20388.9307880823777525678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39210281930198ec784f004d00cca861d3cd23d3911ef7f82a2c52be842631ed
Date: Sun, 10 Sep 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694335448
