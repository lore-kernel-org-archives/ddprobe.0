Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE9E370
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 10:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69BBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691836988;
	bh=DoL5tXA50azK/Zo9Ow1JtNtTiPOIeRUuPFJZyLwEWTU=;
	h=To:Subject:From:Date:From;
	b=Myil1O3jTbyeReFGadyxGcxR5J2K6TRp32CGOA4OSZVp+ZWpotyog+AJipJwjnU/P
	 ut2FYg9ZprHYOAk8hJJKTLcbGmASX6dRcQUYj9JM2pRkMyDbA/m4Co1zIPkzQjqrB+
	 0m3Oenxl/E5cUZvxDw6IWjbhQsjw6Ex7jsuudTHtnGcS9U0GrINfp4PIptHNAQdeh3
	 MJlLsVDz0oWHE01wopEqDYWXyV041eyM4OjqVQZkSr0nDf6mjI7e7RKT8gnANRBw8R
	 /O+z3z6YiMH2AZqMwdPyDrQIHrs1WPTP06i9pbbQ37ZPSVTxN3mqsRD5aOzQPk9UYH
	 6dFvb8cySgQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0BC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169183698866.5094.11769228670482393865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42a2bacb05ac56d83fdfbad0796759e059f93fac556c5f04a593f9308e52d38
Date: Sat, 12 Aug 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691836988
