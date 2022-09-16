Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECD62F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889B7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663357253;
	bh=gLdoPePonN6YpN9/1XuAImN3cw4waRcA7CHMYBym5lU=;
	h=To:Subject:From:Date:From;
	b=Saht31e8a7JrQuuQeqowsCHrU/SrZIzYlHNrv55wy2jUpSRQIKwfZDQUPVZbLcui8
	 yoXD09PRtzTzlZ6DM4rZAFkFwizr/xcClfCgoBdwG6rZYmA1u7gwm1AACUZ/6cOGss
	 bL7aZ7cQhJRR4x+ikvrH/kH4PGqBhSTtZHnYTy1c7sUQwj5lqgr9iH8888Jy3OcyTU
	 laog7BXEKScNuSYcIhArQSBPYcVBGxS6KU1p5iF6dsR1Jad0ssOSiVz3lAAphlf0is
	 SIew6gRkN0GQ9ooxGLVMN7bFTKSF1KBO8rOuK2Ec0go6to81y8K2+F4e/fOZbJfJm1
	 l/otVc1x5KVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B84ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335725344.1611.9361849227843025644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02624a79209514e420802db297597bf4292336f9fb08e1cbc4802d959a003888
Date: Fri, 16 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663357253
