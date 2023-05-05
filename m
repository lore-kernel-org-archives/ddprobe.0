Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362D1D304
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C62C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683330485;
	bh=6sGeSZEWlvpv3XWIg9m9A7f1NQv6wEzwylfIK2yuI+w=;
	h=To:Subject:From:Date:From;
	b=pBhfWvVZitVHrwhQr9WCJO5EUAxbQRYJ2DPcHZRz0fY/ynFfQqSfO/RSB5rAIFz1U
	 5/LA/MVZCGKvZ+ziBZnnREpqPYoQ3tTE4ioXP9BG89zKjQ3yWnsR7bzD6Q7IDDQnYT
	 z9FOyVIcyRInJR7JPlfzpQrKCZ/5YZFVD2Z1Je3xtZcwy+4uvnyyvuY/RJ2qmePT12
	 eDtmPwergb8EL13NZxbkisKycjh/LmzsZCHqYvpn0gaWVIGv6cYaxMUEHmF79XUeeg
	 cBzIUqf49i8jHyca+ThrEqa3Y+7sTRuvxuXSBBwCHQ+UCrb29XN0kw6oyqfUan7/U2
	 IGyabV9ttuRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9652C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333048580.8141.8020596521335331902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e69a3077c0f3ca6c51a138c0e6f0e6e3ebbd53f6722ba7a0944c1a34ed3daeb
Date: Fri, 05 May 2023 23:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683330485
