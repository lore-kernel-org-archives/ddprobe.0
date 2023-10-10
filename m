Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C847F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ula4mAOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E16C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696903628;
	bh=twdotDJ9twKp/WCjsitWE8iUVbHjMJ23OBvQF8Wwxyg=;
	h=To:Subject:From:Date:From;
	b=Ula4mAOA3DvomOGvo42usloiywvyEFS0GuNfLktDUg+nIK/4iYzkVOcg6J8ciyhq7
	 OVziM3XRhrD4Rfa660sPL2S1nluPkdBokkREo+ZQfUtdgQf+S1ynMoZBdIFX4g2dbp
	 XartShyxQmgcXEMUvAVK9/ypjuV+ixVeEm/1hrdDQCU3lePw7iDHlwKuP1+yk2AF5n
	 HQOCS7tQmkasKyi8rHwPN3cSDYO2lU3Odz7tV090A/SUAEUkkVrYVxsWNUp9t8FbcK
	 7Zlc9+T0/G0y5Vx5S9pPVKv3kTCFiANh+GSLWwkmI47RxEh3SAD6KZUf08cI//pPIc
	 37m6r5OArp4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C04CD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690362873.1160.6113281612545984223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb45dcd6f51dbcb3b70a837cfbffad5df16d05bc743c14e469829d64bfe837ec
Date: Tue, 10 Oct 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696903628
