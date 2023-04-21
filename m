Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4659D1FA4
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9AFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682062085;
	bh=PrmVa3pqwJ+rncDXvvN3pDuHKGYvgL9YjOG4XjpLEnw=;
	h=To:Subject:From:Date:From;
	b=qOsFOB1PuKPsfkZyWj3UXIB2+HeOm2Xciaab97GyPkJ9P/VFddU708lBvyJ3Bityb
	 WKHK3Xan/S9CAV/OC4l6nZe0WpIc0LTf8AKqCv/e55KZDoXDa5iJxo5r1ea3U7Ch1k
	 4E3HsPLefeS0fjYZ6RNZfyrJCZEearHeotl4NT71vOBDjbfHWe9BCW1i9L9FX9BNVF
	 crXDPawmyYneuJFisCAz8c4FCE3QShBD+ccpZt+LIDCE7R3anQudcleWRd8Pe2uglm
	 xSNm0BMFzFvp1Z0t8ofVRj+bJ6XpMFHBx4ZlqnyQXum5hVU6K0Had/d5UNf74JNEZu
	 t3ITeGaW6F60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A0EC77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168206208575.20002.5504817569783514254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5535e2791a513e253b6759294bf30aa168fb8db8d0c1ea7e4c5b6bd2cdb5fe5e
Date: Fri, 21 Apr 2023 07:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682062085
