Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF75B36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C76EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671945687;
	bh=KVvCn8OembbNTy2ye/Yth/iGvzKnyODFxwsNlHwvTqY=;
	h=To:Subject:From:Date:From;
	b=qu82gGMrl/+7AFnZNwfhqXhYSTBjw4+Pd7t5hjzyiZ5tUKJbIooxELI+HiVA9DhfJ
	 +BNCQsiV8kBNlPL7yiMjDKpwZN4m+nR+1Ll8xl6FN/hWbyYqzPOenri9HftKeddLXY
	 40JlWX1V95xAEdfVceezoLGIEdnDcnW+VQlFK1yiswMxzeCVq8y5oMw8zwTG7EGc+J
	 6c+9ypeUeDcmufBGPLfdu/1LnDpsm/huouQ4y50+O8+iduxYyZ1DELeFdzL/mfD9Ls
	 ktm34y8/mr78vZFy1OZEbwhHrr5LtYld+JCN7Am5u3mBKCo4XXyvyy1BZIwdezkBxb
	 WHEM0DSLAJVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63642C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194568737.32579.10871305722140505134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaa93af334f61b625add57d34184dc94ab293c7799850107bb07b9e61bc2881
Date: Sun, 25 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671945687
