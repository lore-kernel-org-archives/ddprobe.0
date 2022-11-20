Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C968780B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E74DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668978654;
	bh=UpU5xaMENrdQxQABi5JrOQhpPLR0hBnce5I+T7o/08U=;
	h=To:Subject:From:Date:From;
	b=dYkeUiZaS6nLM1tGf5/shp0LFFQpntMmjc33kAjnHXNhksSDEavnGCnNvAZQXKtGs
	 Jl+/cAiO7pCqj5zwbfVakivhsZpu0EaEUJa7mlaif7SC9Ixv2IA6kWlDVVv2o4zaHu
	 73G0VlU/DzK/lUxcM/7v1qSOG5Tbu2MOFr+X65+lhnDrXK12p+qrRZ7RhIMJniqOV7
	 I/zP9ZpqUlrJLB7p1LHev5BSH+c7mojxI1xgRzbgn0wzIHk8BOXzfnQSVUU4L49uEd
	 YL651cRyG+nZyzeCrt86mulTVh2XeOyEYmFpymgx7uueMKTFlIO779vT61qE0avAsK
	 vc2hBydrTzD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E295C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897865436.29411.11958683647662993528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f296872de7862ffaf52efb1ca764abc63266cca18a463a5545ed1cbdfde186e6
Date: Sun, 20 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668978654
