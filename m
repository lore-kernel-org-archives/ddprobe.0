Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E38620
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 01:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0776C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 01:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694999708;
	bh=BohtgDU8+opR5U1YKTDdHT6TTNKsLLqoGzU/dxNnIkw=;
	h=To:Subject:From:Date:From;
	b=pAUqA9+dCyCvJBxTzwgeFyQnidUl1hPZnsWlS2MeekHuz3Lyo5ltAcX/X+u6E+IZT
	 JXw05XKknQ1Fy8jtesqSRm1/i7Hq3XJe6H1Wx7bY2fuwcCvU/aZdFipaWhQvsbgVfg
	 HBp4gxVS1gb8/RTwvf6iDG1fyW33pSW5gErrgkIVY4lfq0J/lEd4htYrKLwBMmQnsK
	 N4iE18lN/89/Z9N+JfFQkHcbnTnM5LCc1O2xKyOf7clvY2/NjA4JTQcw0BdNf6HBzD
	 VNI7upw/TGDIPrM9aJgCVhtA9rEAW3Uy+lYTcQsP0ECC3V24RFRudCUxj8Ex2e8vL5
	 JK7cU/3gE7tPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32CACD37B4
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 01:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169499970866.14964.10070430686034986541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b5e8d8aafd0c30d6eab0213f2bd424d3843cc63dbfecf70406cbbc100653de
Date: Mon, 18 Sep 2023 01:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694999708
