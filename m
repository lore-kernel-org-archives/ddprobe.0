Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6778477
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2961C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679346425;
	bh=N/8u/2JRUPphYA5fQo560b8QfpnMLznJnQG6z9yoCuA=;
	h=To:Subject:From:Date:From;
	b=PEQ89482yKL8cZ1hsJXNNXO3OiNbGh/6nKBc7lRS8u2AXjT9kB+Fg6e04bNDfFeaD
	 jvz5VOC+5oCkVz5DzjU34I6iWOhJoqzFWXQAIMnRAA7Z+YfdVPV9nOv4xdjAg/pgjc
	 vefO9HJjGZ4R7hDF+S9Pqw+FDS8GDkhbN2ZQIoDur1ry3qwZy3XMnh9X9bUyhAxLK0
	 A5vFS6Pp/eQZP4/WHnwPcDm8arBbo4wk1rS/+z76gWmdYgQKWy2hSqe7LPtnMjc0KA
	 YmswzA1+OVkIRDStI3ivylUSIZf+LH0NJq1XqvbVDIQcInuEKRD34UcrvM9XdodS5h
	 b7nPIOugCD9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7367C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934642580.27346.16373467554972219661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79456c9dc62285871fb25799ffcb323edd5d21401cbd27507e79f252034193e
Date: Mon, 20 Mar 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679346425
