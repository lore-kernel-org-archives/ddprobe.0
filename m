Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44402C951
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F049CC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680631026;
	bh=SVp5ZiBZthQmm7z6EhxMK6zBwJvJ1bwtj8GiBSbvfe0=;
	h=To:Subject:From:Date:From;
	b=PuzoyV+WPxY5A9SR0oYbgqVMRQ9pLCUZuE+hz1QR8+/WCyNolxxwFOdfiMo0MbXjA
	 84Qa/YvpReyr+M/8vxpLzIJoOwMggLc9n6OcAml9TaO7M/k3SqPuxeHN8x5vl0qfdC
	 OZN8w/wmmS9lZyeuI69LRG6/ZRmG/KFzfQaeDapxgYm2L3JKA3NKrr7VkTROfHXr5E
	 AaggfKYvgSpxKtsQ+Ctiz5sIwm91bIJBTgDsTYb3sB742NsznH5h415HYbSGe3YpBd
	 Y/Vf7no9E9/kYophJ346QJQdL+NiPQW69aBqlPC/oxkGIM9dqcwJfcgBrMgQU76vje
	 R61D5IwsGs2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC38C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168063102583.4685.6135400716792734919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c39edd5a4fac629e00b535bd371b1a5e91602ffe42f2aeea6a782b73d8ad02d
Date: Tue, 04 Apr 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680631025
