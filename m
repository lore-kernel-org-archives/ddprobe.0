Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E2CA47
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C919AC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688622428;
	bh=2SOI+eZ64fdt9FpdshRmMOMUdI2w2CBkvmp9zfXSrtg=;
	h=To:Subject:From:Date:From;
	b=Lkunv6DRUEOH+DfSJdj9BWdaURyS6yfXZOAIYQpOOQoVLw7SGMZu/2UEozlU1PceX
	 EolgE5jpfzBVwSetDGHNWIvaSZI760gPyrbe1LrzLYwmqZ92Yxoifp6FnIZiKbHRIz
	 2mdtgp+5205Qm+m7mCZaSwGaYDfb0KoNYgcb52iSF0+H+nn+431ovqSMqy77K4KPsT
	 l8CV1/IWpEZmLbmYQyGKqmrP+vntUzKPNDT3L2oHhWwQeLMXi5EjpoVbyylqeHn5KR
	 juRlJ8XjTX8RL71wwAI47Fwaraw/PvWqg6xMzseHeas4FTAJkMSHE2289W2/Qwc5hb
	 iFUyOL6lsytDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC97BEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862242868.5214.11838321531416298320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3daddb9e8781ed4d34a9abfc33ea906802765e132bd7151e387279fa5bcd122f
Date: Thu, 06 Jul 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688622428
