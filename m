Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485F8168AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70EAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695385508;
	bh=KDeRYoWT+KmBduL8m9s3PsLA0DMt/6by6yeJA4i3DOo=;
	h=To:Subject:From:Date:From;
	b=m4CYgYxuSnecckPSGGrVVHCQnbCgnlOC1koHhaoKPpmyZ+fWHQyBhe6+aH3GatJoY
	 RbM4kcy0sUjWXewOO2/fmX8RnTBoZ+cq1G9OT/iSaSg4krqdhh5JGj1MSKws5pJgxQ
	 4Hv95t5AM6daTcX86b9Ik7wjGShwGcI+vo16Pzbx2KSPB8nOkqEvKpCBSNxaeXfheX
	 tUxGWPgTLY2DXmuBaDBHGDJ3ESIWq1+7IF5jyeiKSDF2Qqz0kE4fJnHy7029YQKmED
	 cCwi66k0OLh7FYiVvzVHqEtozeudLPkWb0iHG4spBa2pf1/VXP3xo4CBCHZ8haJdyj
	 2BlTd3570Jj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9197E7109A
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 12:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538550868.29949.17652559151760829295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7571b10fd1305aeb696eb73f978f409beef9aab09e2090ce3a6bb61ef4ae29a
Date: Fri, 22 Sep 2023 12:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695385508
