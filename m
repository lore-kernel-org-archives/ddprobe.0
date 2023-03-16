Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C80364
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8422C4339B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678971605;
	bh=a3yIeptccfJrdhj+mRgyW+FYp9o/n0f8yRTm8XSJRgE=;
	h=To:Subject:From:Date:From;
	b=BjfI1xFQtURsGSIpbYTMxsRMajTZ5XNDjlnR2+z+4wRdZAckmUqN5sB/t8mTyXndT
	 Cpbcw3ZvjLpd1TZq+5Cs+n1R/hKw4DJKtf8maeD0OS8WaT5SmTj655BeOC8kqeTwYU
	 pXJhMTNCd2/kepkouExuMy7+jBAjkFVVY8od/FPktvTB3KYh72cDi9rPkLC4mNxpDJ
	 f2yOJmpD2XEz5q0guHfAq6u5hBNk2Gy0E6t/8UxEToyN4lhnJGnE8rcntr+H8x185y
	 f8bwgFyxquQOfGNzXaaTeEF5b3yNI8IH/KLc2GxI1qTL2nyBWuYCw4Xdw4oqcvrDqX
	 BCj8gHvW3kFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6E3C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167897160575.1915.16821606430276972741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd09c771ffa0e7719a8cb68bf0c89c608c6610a3ce7f985ee4c81f9d37b0a3cc
Date: Thu, 16 Mar 2023 13:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678971605
