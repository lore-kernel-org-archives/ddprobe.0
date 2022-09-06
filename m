Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20952F2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A3FC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662490253;
	bh=mYfkiDcVv+ZSbdeD4GdvgAs1losgUCXzh13bhTHCtcA=;
	h=To:Subject:From:Date:From;
	b=hd9D6r09ku3ZmCCxFrSLurEi1qc1/FIt37LiIlcRa1614K/zYprqyybhpAtv2onk9
	 1zLplJPY6W8jvK/XO4BV+Xb3DWNAVOkFeRKFwXEvzKp9QpW5MsfXuyLqKlPjLINCuP
	 6Sia4J2TVq1l3fBIFCQ4rLMRVOIRVOk/TDbejtdGakdtn6c2wKwqOc7Dvdpj/zVjnh
	 KvwrRbwWLGtNBGpbnLxXIIh0SslyoZkI05hzJ0NRnEfrJoLTndtasRczCvTvo00iR8
	 WzkdcO0lwTjQX2EjR2I4RoyP3JYBescbg270kfxCGzjfqm+djBfrT5awOqH8cf6R4x
	 d3jh8zSapTyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572C8ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249025334.10065.9861906542777042934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1331689c601936736492b86fcdae6a63825568ae90d094adf81c60577f90f1f8
Date: Tue, 06 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662490253
