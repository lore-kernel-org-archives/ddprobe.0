Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739E53C24
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F34C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693661048;
	bh=yoerP2dwdQuBZjbG+DqzBfYnNyM1QeBVJh2UNueZSiI=;
	h=To:Subject:From:Date:From;
	b=c+Xabp6OkhB6ie37JmONlMlzUWB8Q3z3AnRvD1vdpD28pqu8R4WSREnSOOnBEe14V
	 +J1NZypnAtJJRkMQ35m0iRnQL4d1DYFrU6GF0l/tEIA8AwOJEcdqVjtYW/ho0Isc7L
	 tT4eQjFk+qaRtMlHnhPLzqW3tfSv8HKZuqTiesMyhUzy7M44xGSzjytaR9uLPdXvOU
	 9iiPCFtChKBq9NQozRfSCQe7985syJM49PvtQ3BViA5ffm5qnh1eRIeJqcYxLaXEY/
	 TApw+tJm0RbDN76IaiDUjD+xGJGM7f6VPcCu7+XqLNF8ufdBIdHUWK7GcNsNb93/yW
	 sbL3zea/exSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B65C001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366104869.2577.4673053090341641389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3bdd3b3c10449d5fa5bff12fa4703d70c1555caaf09eaf0705dd8b26991d52
Date: Sat, 02 Sep 2023 13:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693661048
