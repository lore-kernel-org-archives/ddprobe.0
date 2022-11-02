Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AE5801
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5DCC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667390454;
	bh=PRBfA8T2OiwkoEfyYG78T478EKa6hSxqf2L3JNpYp2A=;
	h=To:Subject:From:Date:From;
	b=RTBgcDLDrLOMCmcDGNP3IwX3WcSvaadinXLxm8dqog5nsi8cMnOEE336XzpaVOlPz
	 oMlZK8APFAFCAdjCFdnpTY7XUScRZwO5gE3UUxOg1iSENjYxjKC6OlDWnRszWYTxKt
	 wwqQM6uO9aLMA2m+rqdVqaxMlIQvEkIcOQgRfwXyPZfeiFrsra9pBtYquCi0fry7JC
	 dSaDkzV1cykhEf5FBsZsvfgZmY7vR9SdGZGziBjb/mYWqhPFq/gN9tfPUxstQsbauM
	 kgdW11C/nFKsSTGlMltsJzhL7NpNbkOTcJXiVGtUFcR8PWWgLygpMrHcz+3Lw2Ds4N
	 LPxdqChD+ClbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5701AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739045434.6835.883549424372249431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875813f3911b62df4a02c34c4edf982f7c501c68714c1cdd182409421b5ee400
Date: Wed, 02 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667390454
