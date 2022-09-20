Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC309748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A97FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663694453;
	bh=N6IKtM5a0RE52lvu1JQNOHhfB3WpHFT/CjcGrqwFl9o=;
	h=To:Subject:From:Date:From;
	b=TR6NSUH/VWkmlJ0K3DmuywVUIPraRvCRqxqAChS3f1roIGD6bulKzZVuWYKeeKMoP
	 oKjVqlkVf1aAUGTCwIkRL4gmt6I/QJcjFP/j5gNdBxPKk4ohBLUolkArAP6AsiSYso
	 BFUI7gs98fuUwfZN8r90HGlCS2aaBmrcmH8gKcGG+8E3SBqK1md3CLT7u9FaHzoLTz
	 9dDpzx08Sr+mRGOXRhIR7RTXk9EmMkMJmtL1ksqU7BgtZnmHm4PcCWaDuE6bvLHkEg
	 1FHdII+idQoP3fb1UmGxcRun6X5ifrPQbCPQqiQS89lYvAjt1LFwjfFvDXibKauPUC
	 mPKXIM3aFG/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53093C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369445333.32225.4251117349474865578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ffc36277dd46ef0a21b483e5e6cf8875a9e5fbe6f727f7e3acbedc27346bd1
Date: Tue, 20 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663694453
