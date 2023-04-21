Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C958747A
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC40C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682117945;
	bh=HzEEzGwnV8NH3jpt/iPuMwxeMPJHFxZiitaSUflFAcM=;
	h=To:Subject:From:Date:From;
	b=CvFjWrBk1PjKkkmczOOAHBMoL8Z8mcluTQemyZw/OJ/pZVYUMbpWYV+Nvf9ULbKgL
	 6SdhyabcaBsa9A3XAuTmSJdppMizzuWkr/R6QwG/SJSLPj0bYh/j4sfJYblH/3JJo+
	 cc5PcmOwaU3WwrrivzCL+88GlZcnLMAGWl4NuHFsJGBBI1cFAhuIsAQHOLXi9fEUH0
	 cT9JClcdARFG0L3pGU1kZiiIr0773kYdEtugk0ufk1DkjrB3shzLAiQC6vjFb33hTp
	 zmq4qfTBSYFmtYVWlQNvN5B+Bp3Xua26Gemogu1pkhQwiHbu0X5laUrxk7T82bsn83
	 hSxFx1Q8j59HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC31EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211794576.21645.3724388912472873169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b3bd2a1e84ce5bc77d4cdddb125e5ced78bcd78fd2951a6ecb7668321eebd5
Date: Fri, 21 Apr 2023 22:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682117945
