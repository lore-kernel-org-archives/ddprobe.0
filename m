Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2447EA
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697E6C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665048653;
	bh=ohIYH7nRHVia9VOWCHRcOTQkXNjEbNwqMjrZV6edmwY=;
	h=To:Subject:From:Date:From;
	b=fcWVx2cuiJA6TIE6r6+s37uVWYpQhJNXwxX3Y9nAnTLXmxLSc3eNNqSHcsZqcD+WO
	 RM4qEubT4hev1xrH3xf4AFF3/vO6EDdif6YwMInEcxEzsi2c+bFPGSZmf29NELKOil
	 UR2flG6Ilqoscbi+omX6ogzdDKqkGUSU5pVX7QWJdM+0m2D/QwMZ+SBrlXq02Q4kOw
	 5CsfhSspQ5JR9iekDa/SFCMceM9tg0XLUA9iTMByRSdr8d+HFnD6/lQ2Lo8XEDjipP
	 QHxsUbH6nV/S/euHzZ6C+7N7vcMXu652+CXLhfiz63i+gLTY063Df+pgPR7/vqPZE6
	 NSwkog2/xV0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C4EC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504865332.5814.3045976544844116376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421772c68262fb410d786dfed9378cfbbd291bf7294876eb4dd939c636281f52
Date: Thu, 06 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665048653
