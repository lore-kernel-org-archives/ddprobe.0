Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C40B34CC0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B0CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689169748;
	bh=Un5w5FSkCzaP6raFmXd2o+q2as0x4aAtso/7oUkei1Y=;
	h=To:Subject:From:Date:From;
	b=iz6WLKM4vUFznHy2gKDCFVd/dbqdAz83wf060wmt8ZOs237P7ZSlBWBcsb8Ji294a
	 K4xFoNg+Bn9nMRuTZc5bY2yCrl4cM+nWV+OBqLgVwudvsvRkwee7t7ZspIn/XKCslD
	 lRYCz47A/mWutISJ0LOLXvHM5KnzytzhANCXj/F0+CL+1SST0++VUpIYglo6GQ+PcC
	 1uGUk8Wdbznw1LKE68QcQxLss1mulI/9G3e67C1Rsl+H8dgsbtXghrmlRvry58hFNB
	 97Kkeb89xCEXNyzzCtY6VfSsNpeTkuWJt546Y6jPUf3C1QcrdYxWLBSwK2TBqbQsFQ
	 heCDPxzTh0sMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C443DEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 13:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168916974879.25910.10232258704707646756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1680ad317f47367fb83d587309d68747f7f61384412ac2029ee5010017d95c
Date: Wed, 12 Jul 2023 13:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689169748
