Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B499363D3
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761D3C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667505654;
	bh=6utf6y6ccb5lb406S6pljbIJQLbYsfxgKl/P7xX6wlU=;
	h=To:Subject:From:Date:From;
	b=OLMV6s8+882YMGeFLJS6gJjCi0fQ9iaJn8+KLineCSgAR1nkLYAdHhxSwPxXAEgcs
	 04ewYIF1fOkYS0C/7PncXVumOke9wecc3VRHQK/ndcBRo6uE3NgjfZj6m5eD1bdhd8
	 mH6pCOk2Isn2jGF79tGKpxNk4MAx7akqMJ/rY7gnLA9NK7mkkgLzGaIJNz7t3XqoQI
	 JpEz3zMTvMX38UTeoXlcoRLXxpr3KfGOOnAdRlUwboztJ3deSt6K/YqwCrzRe28jaM
	 7q8DIl5LmQYtIV6akrEQ/RYlJsweA52AaqRCmhMs4f5D70cVoGYGUibDFncEjRvsQG
	 0swQYn4rmiAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD47C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166750565436.28439.4935787679339868824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277f141c5fa3d43d6e219e5f0732693501c7001366a4f43c241b4b97ad58ce11
Date: Thu, 03 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667505654
