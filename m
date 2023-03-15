Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649E193
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDA6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678923605;
	bh=7qH+EDQCUQKS0ot198di2WJ+n/zL7nBgLa2vvdgKJB8=;
	h=To:Subject:From:Date:From;
	b=b7F+ZLgdeMxb1tD+BwfLosnrLF5aHGtypN7lE1Xak2/BkQ7oToq1ZgO4kurFb7VA0
	 E3eNWAsd08y7rjjKHk0rnlnf05f4cJFhNiRjQZ/yGZX444sFUs0qlqLgJU/9x2DtgG
	 WCglilcLxzO7VpMfi1XHjFGLftXQpMvK/jsWniFUDIYmOry8ZVDUiv02/WzwF5R9ot
	 5NhUK/SeeaJbkUn8GCDJGlWtkyp/swVpZMnwUsg+GMkYLVynrjgVzRDpagJ8irLyjr
	 a4ZX8RiuKWfEdmsJecC0Zy1t8dRpT/xTYUFEO6RclSpjwuliqPYvR2C7eY3Zg3z0vw
	 PQOSXEyEwyk8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E5DC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167892360572.30519.16650103440401737547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d2298c9550a99bcd6bfe5896275551913a18ead9eadb5189e8b4bafaaace8b
Date: Wed, 15 Mar 2023 23:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678923605
