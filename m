Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AD21858
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB5CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662838253;
	bh=BAnEd0/KseMSSB8veAtEP3vNuf5dxaF86+uKy9Vnh/4=;
	h=To:Subject:From:Date:From;
	b=YFwWN7bR2iV/yJ+tmdXX6kECYZuXSRwmUzAOJWT46GKcAf6Iugxp0AgZUA/Ggb+jP
	 sBTr8XAR4ULC7cqsa2E5lHkmrHAdzZgLyLOWD1GjQv65KUqa6jQuetmKdmZKJ5j+yD
	 emLgyqQISWl7KXkGU2eR6QAFHZQ3ks1bgfoQ2Nmivgc2uQlYQjnACfdBpY2A/YrE0J
	 ehx/UmNq0LWiw77fvYtRE7tJ8e7vZl/XUb6jw3sHZJuWncwqSbh7i+U265SjYDvnjv
	 kpr+P8+kkGHX4juPG4vJwNMHBhebONUXcFpcz/Cl7zLmf3tuw5bFwsEgf53p2pmYA+
	 xeNd8uivmPnLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5255CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283825333.20076.13743805170748879266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5837bf281add9174382c92ec1b9a244add9e6b3a33dff5c92596afe83e3e86f1
Date: Sat, 10 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662838253
