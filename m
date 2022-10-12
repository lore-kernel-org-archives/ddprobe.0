Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B649317ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD29C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665590453;
	bh=hhodE2/Quyzpsj0MIjlSyYBiee4+GxDDdWfbZon8lxw=;
	h=To:Subject:From:Date:From;
	b=swIzn3+scV2v+bJbydya9UoNoZLYq3RCfoIg68Mwu/YAY1Q4t6xQ4WkKxMtW0M7Oj
	 OuLv9JDpwdhLiJLYfMrxLJGpdo4d1jxgrDzqIju74oWD9CA5q+hzg2JRCPIjwmUMhB
	 B9bNc3N4iUoHvZh+bq4AtiEFOcKGKuCU6zQqqYqfsTY2qakX5JmMImVrbtX4t7E1NO
	 GsC4PmiZlpl2b30/u2SRXrDc1iY5gO/oYd5MCtIARULU7xdW3YT/CjrCikbh68PgL7
	 xWb2wQbLCknEfKGu84VrfQPDSriNgAgLh9oPRowc6cRWRyICSDVMwFMj7QzgG1IL8C
	 p31f484WPDOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5757AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559045335.12412.1558896527698006327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a69566106aac33ae7c2f71f6c4cec76697de6a2240cdc5cef474446d04bdf6
Date: Wed, 12 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665590453
