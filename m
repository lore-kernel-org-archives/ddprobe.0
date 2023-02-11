Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3A610E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED26C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676110445;
	bh=MKmJu+Zybn7z8dURV5S0J4gNSgCEOtq1CRQ3GTNh5L4=;
	h=To:Subject:From:Date:From;
	b=SeHhfSC43AX6MAj/TFTZ6IB5+AQjPQVFojiQChPyB0JRY5VazL+xdtnku0qadXSWx
	 czlA+3dYJ9KjEmOkQtqw96qhAqm9WQYbfeyvet8bT4IUlQWU774WEShUfor6dNZKPU
	 J+a0a30PVy5DEXK5EKfw0xt2jI2lrB/tGD0zGN1wXmShzZyfw26QtpkgCuOTMPLsuN
	 C2GQ0CSjkIW4zPb/HzzQvzNYNdEfAYknhz7kwRPbnvGY6lPbRumoT2Jc8ZDpJ+bOei
	 9buN9Eg17ZNav0Va99NStwX3KLzoDk7+1R01y/oSRG60VDjNBvUVuXxyoRvDZwz1Ce
	 LbWZDzeV26/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C693AC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167611044580.587.11904335254250061755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a8e184a42dd4e60ab3c8e7fad7e24153e60016eb91bb52645729e85059a8d7
Date: Sat, 11 Feb 2023 10:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676110445
