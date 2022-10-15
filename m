Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC54536F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70493C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665822653;
	bh=a38+9l06G+SMiVp1ziVAwPbfznpIRL6pJrm77sH/P8k=;
	h=To:Subject:From:Date:From;
	b=MkaaJcn7qf1fYhp6SFonaiJ+KijEoSwaQDCXaRTfaeoNRuJFO0/+XofYxj1/OetK8
	 Xq5J8KvQWOuVsW8AfTYtekNjdwfv3FV+nwjnxNwL2adQsukAuFu9XrLcBcwzdvmqXo
	 +NjPpJIFmiRTgqkYPfoyWT4SRWVBOTfvIQVZJyI2HMZw+hqZ1NWjTZZM10ey00UwD9
	 VoXhTDfWI+WMUnCG/TfcEakiUdTC/P2uz+B/Pxz3KjVqXiJQ7X+Y4QuO9uK5yCRTv+
	 AFHVPCsSaDGJQ1Dc9M4baY+Bds412pSJCtcY3wHVK7BUed0YCM9lMxGIrxfMcTwzk6
	 +TCNyeMjx1ilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536A4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582265333.16528.16988920926353865726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b55b927fc12937456aa99b5dbdeeb7b520eb15c7cddfbb679c06610ddb1db6f
Date: Sat, 15 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665822653
