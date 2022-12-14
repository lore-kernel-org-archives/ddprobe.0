Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D9C2F47
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCCFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671051087;
	bh=Eaxqe4R8kYn8L2TBtLYlFEMQRS83jCXQQ9h3AehjF3Y=;
	h=To:Subject:From:Date:From;
	b=oqSFbsQlzK76XegYSMR+oaLHSsSqfsZF0Rawh+1VfnZ3FhsUUGrTASPHqh6DT5y+h
	 cXCAuwEyb1XOTYDVNQpEATovV2SoSIHc3NTl1SIma6CLQ2BqMMKwBvQf7Yh0XJ5VaG
	 1+b88gnMtqXxjEcg1/3CG2kia1WYUI3YTPmZbgSUvmwYgucUpzw/IlgPzPobPsy4Td
	 SF4TN61JEI6/wHEU435FRE0tIEv1v1Pw2Pi9C0S9pwVoo4hwMYpsvbCIs+jMnIbtld
	 rjoIqZCmQvK5uDjlYH4uvhuioQcaZDEdy8bSoN2ldRPjnnP7WEW8SNsfgO6zkO6gTm
	 UXFF0yJjfca9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FDBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105108739.12177.5491966971210942195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0bc39383495c48ffb48b78f2f01eaa2e75397bc7d36e6d69e519737a9d12a9
Date: Wed, 14 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671051087
