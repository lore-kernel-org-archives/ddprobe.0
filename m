Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F485C8C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLEPIyV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E80BC433C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699958296;
	bh=z9aL9ZyZ0riYVZn+lfr3sL6AYbFk6yCZPTWinwPe6NE=;
	h=To:Subject:From:Date:From;
	b=PLEPIyV3Fz4ezSPIob/ISfjA7/Qkehm29nxKoylD64WIugjOOQguTF3/H6L/EKTjV
	 2zydn3MMZh0krKfDwlbaMM9MYYI45q6fRIyTBvwLxXkfeuufM//XZfeBl1MK1HlwBt
	 dqhvi0CZlqszjpc6XeVka096k192Rtta/hW6Es5ZO1ylFh/X1P93BLIDvc0ttIdhwJ
	 aI9OIy0KBYiVnbAe7t9lWQLEaMmkBYYDhk7TXoz40SETV93ntG+Qz4WsIp97MUZ1FA
	 cqE+UvEVmK6KKqtIX1NXICzM/AC1cHrxTZ7qH8wU0pzEIUSANj56QjTjqpCld0Y7NV
	 09Sq5Dbe8lL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F668C4167B
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169995829638.3912.18228029263125352906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f13b7abcd997062897f4d582e5bc736d23706addfb41008fcae1457156ec1d
Date: Tue, 14 Nov 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699958296
