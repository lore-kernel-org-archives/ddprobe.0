Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E011112
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79667C43392
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671513087;
	bh=LLPrAxNyDxfWGq/uQBc8NP8b5AQ7Znm+EqQ4oDzRqlw=;
	h=To:Subject:From:Date:From;
	b=KgjUq6GaO+pfGKFHD/2Pw7QGU7faYBvh383AzPuZL1vZJMxz96LaOWjeOn2zdmGtN
	 W6o2TxT3Vonbw0VIAjiXTKsDdszOCv0KJiSIS0yHmLksk+Tzes2VeRKuWjmQHFThkE
	 t1Qd20u7273rmh//aI81FJUkzVum4BEH6yvidEl4eiKJQxWHbX3/Fa0i1WkS7bHtX/
	 2rbMNwD4GeUc6bBfs0bWOGX5aPXPVocftSBkBTlWa20jdIjIgpI6dkkMh21wLOmMJA
	 fPoIO03jz1pCcv21xkMUsSpirfeG/VaKA9R6abToTueI/3halvVzXl+eHVsn2M3TQP
	 C4sqs4u02mTPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D630C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151308737.28188.6618427289068361547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a83472f9473335523ce697da6fcc9355db24c6509410f4eac2cc8cfc8f63e5
Date: Tue, 20 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671513087
