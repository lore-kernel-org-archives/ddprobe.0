Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0C3EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A53C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662812453;
	bh=v9hmPSepQ+QsIgdk4owTkI1VNV5AX9KtYzSaigoj+gU=;
	h=To:Subject:From:Date:From;
	b=Nrejv5zmZjc7xRWvlrOCSYqBoeLCeB3E2Ed8FNxrKV3azf4KdOC7+AhwnwNZDngRZ
	 ngxjLIKke6c+voDlAIGoh7li09k7oxLmn/r+ySPMFfVPrqVt00JiouAKEhq3YiHagl
	 Fyxx7CEvZE10P14OZVlNW1hY60bye79rsxdO3VRLWBu3GZqwlS/R7NEfypRGRucQlL
	 KNhT14Jf6DTe0LOYvRzX+qz8Celpe09lUvE+jQTpqXdJMvJ4WGrqW1re9BRPxEjSuq
	 u0Fb0j6f0hNWBVFF4hu8MrfZA4ByKDSNnkUNnoB/dosLFOUQ3r0IRa4sHf6rzgzyaF
	 HKW9mCynks32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DC4ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281245332.12577.17758298707795081424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2b618a722e23ac1671d3b6573d4ac1dfd571805e1b9d0f5c14d843fda0e3fa
Date: Sat, 10 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662812453
