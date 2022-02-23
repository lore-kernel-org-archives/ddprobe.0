Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2E46AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645644685;
	h=To:Subject:From:Message-Id:Date;
	bh=SOdj6Y6Uc4QZ0CaK/oV3aGUJLc1msWNCE3ophSQ/SUo=;
	b=A5WQP5MLt5xs/FYE2jbW9rQjf9UfKn8td3LDzXS/KAdQwFbo871wYCW5Ed/3ArrZ
	+ZUjIPzFEQxXnMZCFCEpbgLnSG7nfKsaPJSL2AteH3YwmHY85R5yUoUL0/PLGev1pFP
	YDh+AbfDQ2CFjiLvVSdGey9/8c7/pLIT9ug2nXos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645644685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SOdj6Y6Uc4QZ0CaK/oV3aGUJLc1msWNCE3ophSQ/SUo=;
	b=CKKVanOXT/9eWwJuVXCUgdxJbqrLmK+LFb7r3210dEIUXlV+iUpye5utDg0yh6Li
	NDYK6zOiREMc8rsVr2yNOAcAIPXQ9iFCOJwx8z4dgXlfaDUhVCkI4BFpz51OhV5Ntvo
	xA/18T9kOBaW1aueQwOMDqTgX7bsMgiZ9sjjptZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28111eac-31045d81-55a0-443c-98e7-2909946c88aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9723780360a062ae9870cc77638ccb1f601ac5bc7d8575047b9ab5a8ea327d94
Date: Wed, 23 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645644684
