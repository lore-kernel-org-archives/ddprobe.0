Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB05748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D32C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674322325;
	bh=HQbLl+f9Ti+KHNgT2UhvyPoNr1SMlPWtq4e/ITPMExY=;
	h=To:Subject:From:Date:From;
	b=Yz2rBPiEwMVdJ1nsKGfBEKqUrajqUQ0y49AbN1xPQmM0+4OhzNZ0oW8SCGCkflFbj
	 RQk941b1q6iafWYiZpWtVhY6BuWC0P7Wl601ItwJyyCcefkJvZIMasfwBTJQOjkAmW
	 YHS+vK985ifRjuNMqfUWTiycKK3Q9cg5nQonD7Mc3Z6maN6gqTn8d8tNj1OAI/CING
	 mWAh5Y8adjXOh5zLvq1X1xSg6lFmOUhtpHqIEMEIAzYTmtB0QmQHctj52rlRcKRavi
	 8scazOVeRg/drJjrfQURvwSwFMEMRwmhy77q9mKdRHcFVZZCnlkD/ZCG7kPBrJJm4x
	 DBDsMClopNebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99A0C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432232573.9846.3880186764175125749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3405d7345a00ef1b944e240d1dc70d16f2c0a325ed984995525355b578d52c5
Date: Sat, 21 Jan 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674322325
