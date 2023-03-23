Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC91C04
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9569C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679549345;
	bh=sQ2ZJkBdDzcSZUT/s3iwe4Qc9XgRrr0A4M+3ZuRHjMo=;
	h=To:Subject:From:Date:From;
	b=jKJQfPrOFRTrmvYsZ8UcUJn8TulPVc8dG8mpQgtbsYLoQEetzHlVeB7pjOhF4j9Y4
	 PyLBTJXFVsTFkTSfIx+y2SlAByJeoRJ95e68+zRp09cfr8WqHhbQN/ArXwvSWLdPns
	 CQnPhdOkT2VGnK2oPdwEM6mb2zgKmHy2/UVi6raVQ68S0YgTf/1TF9FsOikt6Tfduu
	 O2aQb9Ng10jCTBvA1/t07rsTqCBvehutxp4+llrPr25D/AoULb+gfGb7XwBOCez0Xb
	 q69QP7VO8v7o+4SZXv6tPCRy9wykJ7jN281QuAVcYBNYjxbTIIIGxrGIfW1J3CAb0i
	 6orM16TgDj6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F4AC6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 05:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167954934581.4908.10616847699344322548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75598b3baece8b78059c5fbb3d1239df089424c381fbaba51a539fde170800
Date: Thu, 23 Mar 2023 05:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679549345
