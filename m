Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58F6190
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD11C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669509054;
	bh=KBryyQweDCqO+y/ufGrb0UAODJJU8ROTjh4YcLKUIW4=;
	h=To:Subject:From:Date:From;
	b=e7BawJPhRQCwoLfktdcKEi7a/K28PcOIdhI1LJFuMOoLm7d1gGUos0oc7xq7BQI5w
	 e47hCKmaZz/dkVKzM7VHhTScBkG3rlmMKmT0SHdHbG65HEqGAimC+QSqemYOBcqMF8
	 7curKYjcQzC7Z9aYQPVsc7Bd8pm7dlfCC1gmM3ijgdMQ9n56VwRf3XJFLQoEeoh9oC
	 +cFZUszP4Z459Ixok8ymg2D6kWH8gcj4ugsdXCaTsL7odZ5oVRCHe3NmViIhmdisgA
	 KpxQ9YZtNcFLkWGgN7B6WIYrXGQnboYvCIML/z3OTR00fkLJa0I76NBqONs3lSH6Ag
	 2Q/4XIQ/XLs+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCCAC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950905431.10098.7776908030707323872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff8c2f6cfb44f7fcbb4dfbf8bc61fbe57d0128c3aaada49f7ad959b9a1e5b88
Date: Sun, 27 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669509054
