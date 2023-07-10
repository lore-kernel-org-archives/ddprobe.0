Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46872154B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CCEC433C9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689032228;
	bh=iTUg2ru7mSQp4EIrre8hvD4S4M7UI+GCxMoEtIFkKMU=;
	h=To:Subject:From:Date:From;
	b=fvFXUrQZhFh3DJ3jCjt8buLEq3GCRuHrlRltHR2Ip5iQEGYQm/VZkGr8tddvBXf5S
	 f4+cEC8YgHmAhFTG9R1EQ6tWLFV76bgzNTFvbmqMABy0kdknqnphvLN3SbZ2UnivoM
	 XR1FKCPOsIwD0qb9KcDuQt/Mz4uWvNSHsRWy5SR4WEU2T46xONVj7s0KFrOSX6R1jS
	 2GLiB3rjN9P1jKlwRfvTHXSOiaUQmkJXXurPiB5UXwfQVxi9LkJ5BKPVH0dTU5450Z
	 tybcwBi7mDH7nuoOob27CuOBj233Ppuk+BXqCAjGE1cT7bvC8Cm2jRddA+l+Vwqj3H
	 HpT0PjjvWNP2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E0EEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903222873.19514.18301716222783952330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20cdf66152c4ee94f72f4a6a40fd2d235fe367400d6f93c32cfa3530ef4fda30
Date: Mon, 10 Jul 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689032228
