Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A58442F
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 17:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F98C433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 17:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684344305;
	bh=0gyGodCHxRMX51iMFs5RSa0hc5P0j8OLa4RUvJn4tgc=;
	h=To:Subject:From:Date:From;
	b=o6LiH56lACZ82SxDQuik7abUyTgpuMHGw/Z3dwoq0EjAmjZA/xzzUjKH1VjXcEmuw
	 0uMxKNQS4ldjMXl11zq41OtI+CwffNJ5TD7JcVLWv4kmKvWHc/0Nb3Rs2IScs6Sz/T
	 oqrasp4hSFcXucGYNbp53bZ8OplJfh6qpO++1kKu7oJIg7MgXoFn0rRxu3k4JtOyoG
	 KqpneAKrbmiwmw59lxNXVBGoW6s9ERnyjr2myW6DP0XH+o2gLSws/dzxu4Obs1aRj2
	 ZkaabAQsfLcfC7dyVr0IOCBZEdhfFRtYwrpBq8YhdP8PD3iD3H0rH0jTrHWpPFNPYC
	 qHIh2oicrCL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB9CC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 17:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168434430577.23460.9277570631327117115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a27d094f8d0ffb53e5c543b53127f4450e3ac5128590cb37e9a4b70789fd68a
Date: Wed, 17 May 2023 17:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684344305
