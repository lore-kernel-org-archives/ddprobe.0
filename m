Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2B52F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A00C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670965287;
	bh=09xb/UPCAle/pMHtAOckWHzGdaMVFQnCeIeE03DkI0g=;
	h=To:Subject:From:Date:From;
	b=NKxf0BPWMzgXdkZBnS/0eLrimMhI/oJWN/mHqgcIleJl9YmbjZ0Uzex62M6A9CTQj
	 +r9TsBxg7S3eYOJzwK6WsXp0m9+gTtnwtTe7pn8i5OOzH3328EHdgXtL1ABi6lmqMX
	 rGZbQucWpEyuA7nBedjyCrxzjHwmyxuT5RGgUSkNpVk53YAumZUKYjYr2lHX57YqYQ
	 x5IwKck1qw5xm/g/Tg1Nh3MyZY18dwSl/Mbt7y+ynASyG8+EqCwG65DNSdHWxUDYni
	 gW2Gf2fNLaXEsPHJWFkvhCF2Mz0HdXYz/HREG1cigEtdEKLdcapdfcJ++8A2n2GHjY
	 uYfRYjJ7O50TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BFAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096528740.10632.8794559244261199464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1314bb0eb78b922bef723a1545b7b9487d3ca6b52dac6cdb4eef24514943832
Date: Tue, 13 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670965287
