Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31691E4B8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwoFHqAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F16C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701946696;
	bh=R2IkITM7FyOiRDSMlr3bIs6lYeAe6cYbab6pLX0/R70=;
	h=To:Subject:From:Date:From;
	b=RwoFHqAwbRPUgPAs72QfDutOgynuayK7J90gv9qyzLTYRCDNbhJRv/jBlqQjRdKv0
	 Vx/2VRoFXUAeVtD89JxJY+LHS3kV6kDPJehO3ud//dTwRaItpwht4Y/16E26p+yKBN
	 /HjhtgUqnASS7mDlOk+7F8Yaq6xE6JiU5WHvhjZ788mCqivCankHRaAmyc4H8/MO26
	 l6eio4xIKSUOQl63Uos+HXFsePvnx2hFbL7Z5guvf9q5vUrUsIqwnnfCnl3EuNDNHg
	 kG8pkYyj0c/M3HrVCTS0dbKaDojYnmbdWjTfvFt4bmkpYHFNDDCpTFCcXzMNIDOQNG
	 3Cc9yOoZ49j+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE41C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194669637.29015.6303810339332032010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d590a64ff6e5211834056e62680513725971d5bb940510011df724f75c95a4df
Date: Thu, 07 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701946696
