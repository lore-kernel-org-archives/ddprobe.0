Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A42E0C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA324C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686847148;
	bh=IUxdmR8iboAMSHEh6ZuXWmi7GbBzDZt5mhs6c7BOJL8=;
	h=To:Subject:From:Date:From;
	b=cOxClxt3U/ejvYYiJY0X91SooxO8+Rds/rR8DcCRdKStnhN+1w8IJbEFBOetx2s5/
	 nJZrFWc+mbql8leuUBvem7NFOAF4HxpdamOqtkqn/mq+4tMOnYrrX1QhwdI2FrSTWB
	 YeR1Zs10N6yWU8/hWAZ0LrvrMVhdAVLNS3NZm2kPlU2AKvbtOhqnFKYADWtcaHMA6z
	 QXhk467JVcgLEth/LWA1RxJqut/K0G0bC+B5KWippk4VIOTjh9Y+/vztOND6kYVTEE
	 1/ijnkSZPlKoZRhmxIQ7Um5v3C8uFCXXCLQav+qdwWf2au4+totKArSKZ0y6v54Rgk
	 CcF1Utgcm0Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC78EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684714869.31550.12866836540887659605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680bae358ddd740ff1f20183efd378013b320e381a4485222dcfbe04438deab1
Date: Thu, 15 Jun 2023 16:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686847148
