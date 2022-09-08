Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CEB5CA2
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBC8C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662595253;
	bh=O4pZpYddvIBtwdb29Cr//4+nHAwZKAyZn8uwHwC/3NQ=;
	h=To:Subject:From:Date:From;
	b=qDkeCXv9dINVTi+LDvNX/qQtMtzibs/rR2DfWB0gfPBFJ9kziBc8QUjQbOcLCDH+g
	 ZOeeDF3lLfK4xBMBnKisF0gZgUGzD1QQo2Fa6MGQCryU7bzqwwI75mAxHwtMmNcb9w
	 EOqlt/FVSvBqH/gmKv7ymBwC2d+YMKmUzL+db476j26Voaj6ZhGsUANtXxi2ZAmdSK
	 3MKC+BuPA49lHOHCyXe8WcV5NydwkMhy7na3spnSg2Le2EEALHt6N9gZRxdioJDF5S
	 nVlxflR3WYiShyKkD34BP1OiLlyPBWFEci+UrDLGfdb1bmvfP0oZCzn7JzQ3WkUpG1
	 CJ3V1PrBQn2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543E5ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259525333.27607.9751939300714767352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b998388d3d1644952b62f791406586b1a26e77abcfd31fd6ae77d78df813508
Date: Thu, 08 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662595253
