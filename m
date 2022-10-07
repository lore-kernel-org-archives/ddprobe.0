Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E040AEBD
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93A76C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665141053;
	bh=WETVuJvI3sklrdDUW1yvf+Kp/EKPvj0amUWScM83+tI=;
	h=To:Subject:From:Date:From;
	b=agRsTZwNV0cLBSwGuuQi9HjF6r5nIAQN+drX39B8kEX0Uh/UyL0I6h86AVkEqCubL
	 0dyLxay2YmBj8cPWUzNMtpjsgDmJVilobdDJJ9s+YBC7lgflvqrc2z3eQtD3di4l/B
	 8Fx41SqyB6I/xcz+UGiUkrALRBNPlYaiU2TmzqkDTSGk9iJ2kJc7S2NE+cIXPW7T8E
	 OcTXHjqjkklq47TncSAwHBJ+TJhYNkAyp/NZh33POW1q+59Ysiuxl7aOza7brjH0bJ
	 5sOC6JPqHIljjDi2vwr7dFHLYAGflGKqgcHmDntrmTGkXOQt3iuEdisQKUGeLRbYJy
	 ujWtyp7RXXcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75647C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514105346.5402.10003581969123854269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d27d7deb24f20da1b90524df8326f25658c26332eb245921edbfe0266729e7
Date: Fri, 07 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665141053
