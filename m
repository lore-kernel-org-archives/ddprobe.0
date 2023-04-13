Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3BD626
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE80FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681407485;
	bh=uBQhDKiYEWpTRrnad8tYc5FQHshNVyaWBjQI4lfTW04=;
	h=To:Subject:From:Date:From;
	b=A5qJZB8VwfAYQIrqT1Nxd55cLJSYiumtAWgUMrgM9mSz1xH6GHuNXX4mMtlRaX9bt
	 xcszjJIxVqJcKNaCiUH/uaZg4kZRffMOBV7Q58bqHnaEJiutN7ZeYjMxNw2qcQj/Fr
	 W4rTXO4rR++GUqibDPc6e2ovq18exqIZf3GfT/S26+SLQhH7q+XepZj2xP077as+aH
	 9uuSGqcjY7L8pk9IcEZC3G5GdlJUdFA/+EGFW+yOWJWgyu2f+BI/NIs8EKnrriQXjq
	 HxxYv8DEIntkzmneiYQM2Hihrg1vsvOyDZoTbY4SRBTD2lnkLQT075KFkibEfW88uw
	 0xJ1wT+wtYppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5A7C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 17:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140748575.18463.12116400395030480991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd92a3d7a776e7fea4a510b16a7703f38245e2592c41fe69c7a30d3c419ef2e
Date: Thu, 13 Apr 2023 17:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681407485
