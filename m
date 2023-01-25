Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9410ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12BFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674619985;
	bh=uarOMI3ZhHWk6j7L2q+CSXb4YUZX+pG5phEne11guP4=;
	h=To:Subject:From:Date:From;
	b=WUUUEIPgef0tpaedC9ZIEd+awaQtLLW6byJ7Qu2RFG7KGstar9OjJ9t1H0HeOsmsl
	 NeGAExdBUgIo/vBcFFIaid+9SdsA8Y1l34yTEuJc+L6SW6K3k2yYY1Y027RjhEgGVr
	 R76jtZYi+M4/M1ncqPPyEUYs5JPyAi4X5WkNWpj9lVXF0q9S2gD/hD0hKQhdApTHOm
	 9qzLGYCd6g26FlasSow5nhdro/+nyZ7UlJmbB3Gd+/lbaA7P5WAWq0ByhbfxWKy3zQ
	 JlMcazatoqbJ9Mglp8l81SydMI0iICQuEt3gG6zeIssHOzAr+ROxgPsthvdwA0LLbP
	 mITtp1X10s86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F45C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461998574.28052.8522206981890319020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d3b8f550a350817f1f7ee310bcb5a6ad72c8a0ff63a9e1736a7e6a8987f1fa
Date: Wed, 25 Jan 2023 04:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674619985
