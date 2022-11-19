Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FA01382
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726B1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668876054;
	bh=M8l18Rxes5r7bS4iHxUjr8llAhav3aUZAAItnQv6PT0=;
	h=To:Subject:From:Date:From;
	b=dTXu2ds72D6kw2UTQbpC+Ia+d+8NPim00TtObQsvaYkyv/mnMbTqfY8YJia2zIXCh
	 wH5navu0J4XEEE1UTsZk1xmiqOe9UyRp0CRT9BvnKff5PUqfgAmiY1RcXr9uR5tXr9
	 CtRUf+LYvWW0pA9/MIpfIFziOyBCXjOG4uQ0Yuo4y+UVmRiCvnQwAnjcUmngIhxbfU
	 s0CofoE2hbcYNMaeJ6jW0U0vv6MJEafDKLPv/3sK6x55ASeIb74QvkUSM145wQ2J1o
	 h9c85bFG4tX62EzrH1Q7lhMfo7xQvFwjmieb34ToK9A7b/jzR8k+fjOi2gRWFXJVo+
	 /RxDbpA19LVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5668AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887605434.4562.11422206685827292701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffc475f330c8a995d68b39779693b2a34a48ff1ed25866cc860f15c434c566d
Date: Sat, 19 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668876054
