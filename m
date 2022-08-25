Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05161FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C690C4314F
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661415052;
	bh=GjeInPmw7X+h2LQHbLFDjxnoBuZKAP+5Rgk7rzIYVHE=;
	h=To:Subject:From:Date:From;
	b=YSPlm0j3DUAij7sjssiIXmoIHqMzYgodUiMearFtWZ08lXaf/OqcN4GFRPtXqKpRI
	 nLpIV/v0W18CkWRtQGENOL22YihejgWKlNHr5czZIgIuKmndP/ONNZAhLquEkNTMe4
	 uUuc9Q005NAjbuGLkdYLHSKdqa26APoHlEmLu1FTTGDud7O7ilGbpwaWoU2HyxTW07
	 PMAMzn1MY9VJQH5xnOXyKVCzn74HbtazadKS48KRLW4BcgkJYNw5SBftE3qSToiXmr
	 LJyaEqGUTSXyN7y7DGh+Gt8uCciVGST8fWYeFVCOKtx80KK4dg3xrkFZ10VqBXGn5i
	 lkWz9rijMHUvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5409BC32774
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141505233.8026.12666748316045434234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876c9a2b42de0ddcef447843c77c11b446acf3723df6cc8e23864b8969cf3df6
Date: Thu, 25 Aug 2022 08:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661415052
