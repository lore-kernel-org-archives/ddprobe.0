Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D556A370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D7AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665709253;
	bh=Ofbsg+/NMR7CpItvFI7j5DfI7aDlXSh3SjWly7ZNHEw=;
	h=To:Subject:From:Date:From;
	b=h+OQowybuTIFHLCfmEH1qVSTc6rtL6aZ5Kelx/Ztyej4es4/rI80BUyL3MClTA0gq
	 I45H9Nu3QZgRolIE7NCzI103iQDAi/taK6DqFjGv0HDaSXeRDwUi+F2BOqjyHQ67t8
	 eyogH4WZZjGvKxw4pNVgyG+rPV5g7AalQvll8R0Qxxpunps7MsIZPjaBteEBQHLL1A
	 vioj+uu99lMw/F7z4/9KYTF42mKyKPKwzygktFQdLKvphQ6VXXyYh8Kbd9wOoR+lsD
	 8FSPSkYU+V0GCjdszsozb3QNi2yMeB96VNdyhvtbN4dJJ98Z0580FSc/lMUy+uj01d
	 1eYa0C02+3UUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6E1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570925333.18330.7062124332063405601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988e45954b7d70936cf29aaabaab04620416908e85e00b5abeccfa95665e2374
Date: Fri, 14 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665709253
