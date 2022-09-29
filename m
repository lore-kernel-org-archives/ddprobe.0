Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD8B1385
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76373C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664455853;
	bh=cA4VI4D38hDuQ7Wd979mu/2wK2ayrrC7H4BApMXcNGU=;
	h=To:Subject:From:Date:From;
	b=a3gKJb2vhTCRisEkw0G5YU8fZLM+g6PAiCmLwnj9vMzhD55XKfIfSUGbbNEOcqCOg
	 3jd/rS4ogxstgYQNr0R/bVPuXkwLtxxc+LMtX3OUammQ91SLbHeQUO2O8uGrVt+tvT
	 sUgaAtbg6BKdy8IxU+qU0V5rLvRGaeNvTiaA1jdYnTA4PT4/RtBnI0NH9VO7GWYGho
	 1d42UngzrsrPtV2HwS9eg+2etgJmzIBbtKnBOad5MrpTnqFqOaOsqnlEOSqFZO5Sdy
	 MQUzYaR/ELVvw02fUplT1IALVQ+Vmz6mALqre0UHJLyEJbHZxJYL8oLcLNvQqoAfQy
	 H+F8FplulyZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59672C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445585335.25561.13244758601588337591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f551baa4c02d9eda5fcf7a6ca8ce42e7a1f64a4235b311f8e124619ea213b5
Date: Thu, 29 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664455853
