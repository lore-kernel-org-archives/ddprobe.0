Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11310BD22
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B64FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673472687;
	bh=9PIW3uKXOAoDIfYLGU3dNcU9krZ8hxHzjK40RWZULCg=;
	h=To:Subject:From:Date:From;
	b=ZdqblmptJnUxDkh0X4UTcPG3lQ8xA8D86441+lwAs151Op40Odw7c66EJvETpFY+F
	 grSDwXeNqDu6pEGXCQ5BcCKMEivvoxB0pasQAglu2u5PlmWKxS4iVYTlgZmKoraW0o
	 aW45afgk2glCBLEaQTEBcNTeapw6D36dmekhmPgwQeDhBuqBxfJ2YnoaGHTgudOtAb
	 znizbWpkVEHe/TtkrEiMHwa06r/PiKSIJex+NY/R8wQpfsQderbnHx80wYUhWK7VLA
	 zmFvwCo3kF+va0sCWKOf7y5gMUlPqk8l1ioDiWzjNeGGDGx57yb8V341ZVFeqm709p
	 LRgyByf2OCv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72DE6C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347268746.3936.567752015599267817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b79ec44e18c83112866137fc96116d88cdfa6a97bef778051d1e2db333d1e14
Date: Wed, 11 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673472687
