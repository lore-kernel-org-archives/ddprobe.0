Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DCA6D19
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F117C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662054653;
	bh=nKW8MAqX033xt04AWf1IfvBIO/uDtj/KVk1e/G4iYGo=;
	h=To:Subject:From:Date:From;
	b=fKv61fR3jVJUF5fpgLzxj026Ul8r2ej4I0+hmdHA+erZrV8tASyPeA9M2rJOXmTBQ
	 KOErc/dCQAeKco+S9uK2cHG3IdtwpcdZdavXSEb3MCg/uL8ciKat8zdPLSMRkehXcw
	 /+zLKs4DjVEy7u4L4buryJ8ECMB7/rRXZcv+9gjFnBMzlr8pAM7FVr8MfwxGsNE4S4
	 MWC2ttaNWWx6qagAaYUZozhm8d+EwuF5A8p85pdc7S9/R5Xf36fFQA4aEK54s2UVdX
	 6pYSbaJd0tC+s8Si1eeIO3euthkVpHgHYugGkzxrTFMD2tOggqYmcsMYnm8MgH+vdU
	 hpH23JJoDmfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550B2ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166205465333.25000.13071314003824781064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e6f12f69f81df034f2de04a3a2a699c125ef2820ec507c7aa11bb8180c4e7f
Date: Thu, 01 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662054653
