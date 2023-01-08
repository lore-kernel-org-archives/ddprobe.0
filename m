Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D914728F9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8703DC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673208087;
	bh=vyu4XtuuxB+Q5YqfHG2sxEAqHHaqnAg8TlfXH//6V2k=;
	h=To:Subject:From:Date:From;
	b=WfL+Ikc+++U67GvvZvsnK7pwe1mbUC2d0Rclk2Q33bu6ji8Tlxc1jSQTzvSxTaiZe
	 xRtXjwI7H8J20/V7NbxtPVeqqq1R3XCywixRdUnwJMSk2R1b6OwgBNAJSpnN467yLr
	 90LwKk/rigHFcGzU3JXj7YV+gpQ4tzqq/ODWae+ojgkBhRAN9ejYtVrwf2OHet6Qzt
	 J/ohTKRvWQ0BoTW32YPNKZ/LGS8M4jLOAUawqgNuSeSdiTvXzUikDaR05YNBqFLhhf
	 Q7W9QocSO8j33Jyy6OFqo1UxnY3/OinB+Om1UVE8Eovvd3+Jhd5WxT9OpAP9l1AY16
	 PctLZySbGbDjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CADEC54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320808743.19196.2966447428844854311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f58187fb48661cc9095b6e065e85063d8ec0911fa02e9696fae0eba00910d76
Date: Sun, 08 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673208087
