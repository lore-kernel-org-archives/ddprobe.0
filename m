Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C80B620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02ED1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682219466;
	bh=ysrM9WKC9jVZHxW26NvUTncNzGxToOiqPq7f1g1O2OE=;
	h=To:Subject:From:Date:From;
	b=SG0BptRpVh8Q0sJuDTgKwbKSLy3f3ZMzoPQvifD8T43tJ0GHU8CsVD8jRd4JVniKK
	 4j5clgC7dpt+hoo7EAHu+uXXXtFq241+Uxgs5Qi4Ll3N33dIYbNQaNEHkhH3euVjHm
	 HbFHoMj7dKexyzh8ZA9uA+kOY3ZV5FDPNJvLBLi+RRxAdiK6A89HIJMh1aB/XsgvOq
	 BiQuEpwrMiwvm9UZhTIdL6u2+bPW5ZFr4mQw3RQEnERU9MODIxfLlNj2O6Mzh26a1W
	 Y26Qz3WWRyqyH2B9GfnppoEvrqT0T5Ir1vO2QKLMIiammm7l/D7azqHKz8x9VV9efI
	 nLfjgvAibXbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4389C7618E
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168221946582.15119.15829165462416008919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0263d530bfb03c70298aaeb62304da3c910c3833174ba0d33fcb975365dfe7
Date: Sun, 23 Apr 2023 03:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682219465
