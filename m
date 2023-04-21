Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FD85670
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14F52C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682094546;
	bh=t/tYG7VFQZVAmhXVpZdXmhXUJbyvSVszDYhvqB23PYQ=;
	h=To:Subject:From:Date:From;
	b=k5saK8hnZn8YS990vK/4kiNjSM5MCXiEelC69X3nAA2QAu0CT3kah3pRT+4tn8TYd
	 UQLtWcQn7p6XBa94P6lDYqq6n/pgliWssJADaB+vI/Znpjz6kl/6LQy+K2h0tV7yUj
	 bjEUEE/BlC7Hb0gLNrMc4HaQgcW2lH0QOszkyj7K9h5tEe7ah9h7t7h6N/JBuc0oex
	 ZyyflCZXXAzEJrjUOVxPI5+1ixUqcQjiIlcB1ztbrLJRaEKuhv8UvuSEj7uDf8bR0Q
	 qWCz6TmK4vz9IRe+OHQUzeDt7aVkQrVcZVnyooIFS4HymVh8+p69iS0FlNTHW3r/AX
	 EuvbVpOLSCTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB925C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168209454582.27285.16984643561107039069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525e3ea6a9e6243662ba01c7b3dde4a82bd1367966c707d73121424819af110e
Date: Fri, 21 Apr 2023 16:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682094545
