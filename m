Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C35A1FB3
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF04BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693388648;
	bh=DVvxVmD4MjKab0IDLDb9rIyov+kWB4AeAX8IHFTFpFs=;
	h=To:Subject:From:Date:From;
	b=AH5jwpLcAagtX2Z5GHeunklkNKc4Rnlq0tgD+J9KSTLIYAASjSAQubAPsfYRS7DLB
	 le0qZOAmrX3PxpjzVxY5qL+JbIlD5LhSnUWLQYPxVx1MJkgsR9XPoHZDq3bwyGtsrQ
	 go/a4YexpDHLmaaHwkiws5VEZ3zg8kQFVP5LDPlhLttlb+4ZY1P80iyDcrgAg652xf
	 /3gVRwlCbvUhnIHPmXmSsK895en2LxvukDvBtyGKnT+SkyphsJxOXJ5EmRSDr0rBAW
	 frjU49jqaEJyzheqkqNaDPlcEuZffmr2NFlKKRgbBDqBvt08inNb6rGA3gJR2isGs1
	 SNpcTV3hWBU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32C0C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169338864872.25264.7383244980927236791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a038291a95fe07324b0126f02a3b774fde78430b58dbeaf16a8d926e58b9eeba
Date: Wed, 30 Aug 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693388648
