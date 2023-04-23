Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7442C7F2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 20:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A218C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 20:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682282466;
	bh=b93uRfko+BBHz2fAY7DrAciq25XCIs5c99R9W0t/x8M=;
	h=To:Subject:From:Date:From;
	b=qsMrCNKg8IMermCeeWqIbs8mxIqyv31kwt7f8M3hx8ZZmy3jtQDWWzpUJ8/QuPVrN
	 hkKVb12juIJ907IRfvFUhAolb2gThfhWjYzZB1cwCnvyZqRAAA+DEeKyztCqmjHoL8
	 RlOh31No+K/xJ0NqoxewB0r3FFd2/8a6ZrYQBAnU59jSyX600B+h+KC41cpfUfcUN/
	 Qyw/NyosD2IjprK68ivxHYWDZk/+6gfL+vgVR0j1m24mCV74Fn5k4v8m3SMnrVL8Zk
	 EA6ouHlHRBVhyu2AYRSyBMVmRE8loBsJ4iJcA23+tZyjWDVHzgBvNodZR0OFOUEJpP
	 yomYIAI4z49pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC435C6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 20:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168228246590.8527.10955353152108392996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81013a4a5ad16b95a54df66c1f36d9fbbd021ff589dc680146f6cef1f47703f2
Date: Sun, 23 Apr 2023 20:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682282465
