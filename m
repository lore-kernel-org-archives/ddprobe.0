Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73721FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F7BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663042253;
	bh=4NkTxMBxe3UkF0Uh13xFcYiS2fQwabsX7mRORMXsf3c=;
	h=To:Subject:From:Date:From;
	b=krnx4bdlL4KhPA1PZLuK0fJzYlb7sNRw1ZhK1KItm7RIZM0Kp27B0jhScTkqgddzN
	 zNWaT5seuzO6qNR7WkHRtXfV2xSNmFEzv87im0pXPnjYcwc5MuSdV4JK8KKHaeXnkp
	 HPRdZcxrDaweDsSoxVvP/x7ElxvXx09/+rzBHP6DNe3bJxSIBGHR7cocDxE4XeT21A
	 0hPsVcnbFtZW9gLZpuwPZ1u9Z0j71ottli0CItWRPUKcsOpeeV9j9SfmpwUHoBpfOw
	 mQLGnSUO7+ot5uuwDQSVklkKQesFpdwcMyLXqyiTctRis3sacBZW582Eh+ggQpytKS
	 54tXUDMm+1fUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E492C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304225331.20859.3127283110466266557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c4827cee6eaec18a360fa091e4f883d22862cc3710b51c38d560adde44e24e
Date: Tue, 13 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663042253
