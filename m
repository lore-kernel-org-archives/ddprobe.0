Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78123D5
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0BBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682615525;
	bh=sBfQP+VtgaiHHZQ9LFo9DIqDUTyPcNS3W19BzP/Tmds=;
	h=To:Subject:From:Date:From;
	b=iukaU9P1Gdkmb+mU7Hgoh4Xq0mluaaTu9daFgL4LVanb5gXCQNqRLni9/COMGjHMB
	 2UslVtXEmarOokOWjYMkmsULFnbi86uzTvtVzljkQR0EG5RIKN6OU4jhgUYlf1aGtI
	 y40+epdNPvSQHhiMbYk/GXxW81GxtZ7Kbhu43b8r5/hwSqISfqFGjR6Ll8r+SXX1yp
	 kCudF2uEDMDldRqVy1M0TFgfhR64Bj4OXs/pGVB55N3bf4G9HkSWy3Olqhbv7WXX9Y
	 sLrop4IWT2gzQVXjhzSKk22obVtua6U+FMGTau1lDK7SwwK03amJPpoWbvx+ouCYUI
	 Qfv5+sHPArK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF64C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168261552583.31812.4635108185697426757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714ac6f5d79db8528d45adcef6c47acc722c2d2795dc0f1140cc6664db075e76
Date: Thu, 27 Apr 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682615525
