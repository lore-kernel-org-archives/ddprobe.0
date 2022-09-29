Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF2B10E8
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E13DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664428253;
	bh=6MjQzhK0sp9Oqjg7G9ARSGwW+ojxDuH1uGAdR9oz7Fc=;
	h=To:Subject:From:Date:From;
	b=MGPRohYynqEGliy4sRN0VdhsoEVLmclyp2B0OSsZxvolSKIoUIcWnwH0bWJLOt4GX
	 BtZPYTtxLOapw3Z8GkWWkwx+FdzRI+IwZbV6zNUgP+UKzgNWalbGYcCag0J0HIonYg
	 sfcX7IQFktHdSuSHKMi7FwrALw4LJEBJVvBybPsAh9g0ushtcND8oIGtReLh5lEdfG
	 l3BnnRBKd2WvVPvZ2+Won4DtI8iYbfcUBC8JdQvWOlbo+bgjBnIiQIKr40noGB5D1j
	 GNrO7bwJTLtQVb98zdmzSwFIeT6BSzrw//rdrnS3IFwuBfuELZw19mdZBJoMOF9qBn
	 bzUY2cdlHtOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EC1C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166442825332.28796.10873502645678624146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c11fbc865d8db22b98a89b548bf28608f5aa83cbdea7b69ef6351922d859f7
Date: Thu, 29 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664428253
