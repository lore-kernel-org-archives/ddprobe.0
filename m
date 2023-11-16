Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA97E
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPeppD/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 968ECC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700098696;
	bh=/sUoYpwWYJ8SIGBjDy4W/TI4q4Sp5B0Bd+4L9+/hW2w=;
	h=To:Subject:From:Date:From;
	b=lPeppD/cSxPMj/f2dlMK67h6gRfYQDwfnumjb2qjoz+8iUwLVkvp4/j+OI+GM35Iu
	 MiqR/gDUD24JPQ8+z8mZN44jXnCbIbFnIy8JjF5scezD8gp6/GGGkIaYm9RWTu2Cie
	 FifjPDsLl3CWMNi3xhfgqsbmSNvBhKO4YqbQN7Q0jXAVlTxF3oG8s0hD934JQFTimn
	 Ueau/iiWRbuBHKx8w2mAYK7KETWXdSEJBTP6AmB6QnJoiaXNc6e0KlPOpRca35QB2r
	 b4YSBQE/FN+x0mF4m8sGo7JkWGh2W6A0tSF5CCj245MsZXwYBW5whu7osB1R5Y8+ti
	 IOgZON7rf1FFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 778AFC072A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170009869644.16960.18296822095984444221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508da2d8cb7e97b2be8c6d3b5ac74a1de5dbbfc3c79df59d4801a0be8db67eaf
Date: Thu, 16 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700098696
