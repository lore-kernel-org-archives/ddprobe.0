Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762DA22F03
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC610C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689870728;
	bh=MF6f/VypsCgIkWMViDAB1mpSERYdGulZpEbhVzi0aSM=;
	h=To:Subject:From:Date:From;
	b=N/96au6cFmg4EPmgOLk0BPFEt7xKiWwB12EZiPYNZ+Tcbl4fjEAlx3lBk2Yw1LWL6
	 IMvWUBV+gjTAdO21Gy3bc2HBDdZjABzNS9Im1O98rGSMAx5l8gJnJI53bYaSY/46WW
	 NxPAI6fi0UsWLGqOUPAmVWIglz+ntO81JLme0oY4pRg+Gb4q2Wjh4bodjgPAwqJG7X
	 ZVsMnAgqBh4SZwUkAVxT09wiAaJ72lyq5sH0bG4+UU4UIF3LJxPFOY7ql9UczV69Py
	 Kl8XL0r2vduoEX9/2Ng4lAqUIoX61o/NTuaS1krZ8iDQQnszDYUxJfyjQ/5GUMe45r
	 n5UORSwCWrKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D49EB64DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987072873.6617.1838537022441490357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9ba0423bbcb98784e7447a63c7a6cb8304fee9726994e7cbd04014f9ee4dfe
Date: Thu, 20 Jul 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689870728
