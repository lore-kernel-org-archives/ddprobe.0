Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA4023A0
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEDBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669277454;
	bh=BO1Q2cZif4mr41ouyy5sk1ATyUQW5bF/6nENRxL2Vxg=;
	h=To:Subject:From:Date:From;
	b=u5bLYARkWjDn+ajqvAYXZEpViuzchQyjqnIQdPMP+p2clBlcYqtypy6/RwMc27+Ng
	 Rg9JZzPhwf7eyVzXi4Kczc0OqyHLPSA7WirYGpt4tkobJpWKSjlv//tcauiAeFp17r
	 r0Xi1tr4ZxxcWkm4HyY/ddSM7ShLP0zczKblFRW9pLfyfVhu7v4J9Ww7QXkqv5wfe0
	 9ZgN/3v7cni49hitVxohBOdsQ9guL+RfPeFKQlsnM2VJDFF2WVbCEG+ygV3PcxEU6K
	 vFXAzelrDZvDHNpVNyLzvtWR3B+oTsPBUeEGO2oDrxLs+aSuhn3lCfSWa676y8z69P
	 Y4uR/UwslhQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D58C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927745433.10067.9091831191131630806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29145986817b86828bc3f2bc4bdfeb689de56e9e032db4bbb5ad424bb0310cf1
Date: Thu, 24 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669277454
