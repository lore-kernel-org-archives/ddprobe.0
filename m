Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82261C27
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7726DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663744253;
	bh=7f4k9Yr+yFh5cnOKi2aolfZtE8lkFgNLJdwe5v0mwwg=;
	h=To:Subject:From:Date:From;
	b=Fa/tcJyo1lPN3lRbvK7OkL1dd4T2AtEszfPXwbQI9tic2NEKEMApYGKLHo2u9H19m
	 IBIwvDk/l1MhYQQxhvRab1HCfVcb8QI+a9ZNJwvHfj3IGr/nocnOchDswKinz9W3zu
	 Wa/U1iZec0Ktk9r5Y1EV82niBwUcYh9ikVXDjKHUIS+FepzLjNWNf4/mR1WMXJ3yeS
	 n1q8O0RMEtFYXrT6q5fDvPuMAELP1E1Dw+epPnn9Jqqo2DYLrAeDbPCQDu8c756Ur7
	 y1Dmr1gxLT8eGW6mX5T9Svis1Wy0ZR3R2nJzFemmMKoLI4vlGpaJnKsXF5TN0hVa5e
	 a3CwAFlO2hpVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F39C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374425336.3454.4220480465196353745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fc905e93f620746ac59895948014f724ac2608e25d2f0b05226bcfef21e25f
Date: Wed, 21 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663744253
