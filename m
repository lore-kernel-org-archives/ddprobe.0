Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C121B28FE
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74680C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663923653;
	bh=P3sWO0/Fy0q7Zbr8XZQmdiTi/XxHSOhZ3LYjQ0zOwkw=;
	h=To:Subject:From:Date:From;
	b=XOxq39ONV0NgpM3Fdh8LcVHWewOcHyTX/bWAuhWh1x1mu3izTZxjXQ1ApVINOhMiA
	 DHW2/ZPZQ25rojdJM8I22W7tsdgrXjt0r3ALQCYK8cDoYJDuhsEx66XEqD0tSEaMsH
	 GBfzr8VNjWpqknEVClGZCTZg9t2cqX9FpcWBYJpbBOhT6G7YC0NmAMdPbumHM9GKZr
	 ryq1GmGGU9rseNH60ld0YCZaBcsaTLQjkwMilZ5XGHnkPtve04S67S/jrg5iGVcADk
	 eDY3WEPLl304nR3HMiQxyXmsWgIvub2ew7OLF0kOep78OUCwcrZuZIrcPgfqfMYjdr
	 0UOBBzlRfqz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5997CC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392365335.29568.1226026529806242481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba1a420c387448eb3cad1f363d5498d28cb90d837fe2f9a7bbbac377921029c
Date: Fri, 23 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663923653
