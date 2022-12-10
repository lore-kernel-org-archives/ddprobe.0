Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4971ED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846E2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670702487;
	bh=+gF7ynmezL3P04FYnDuww5eRn8JcpNSM1hGoWPsgY+0=;
	h=To:Subject:From:Date:From;
	b=LGn8opxFbGuMzXDLv8/JMouuBi+3sqcnIeUC9P/ck8bM828YfZhx5ltqCOIz7ofiN
	 izFy20OrJpVsjBBvHzo4glxlkcRPRf6qN+zcsOli5rGz2wo3+TibemC9HtKHnATPQP
	 Zx6A7YGFt4fytlmapphWr1invbM3z1XZO/AYMVypzb8jpY99u87Msz5lQ/q1vXHd5p
	 jrqrOr9e3/7seNDWzQczZnZaYYFJFieX7TpXC+ds0qYiIrWPT+J2lqd5LK6+tR+lT/
	 s5jJFNbl9umLw5fDYN3X2rHqUWGA/D75JXUpo9oqgfaxy0feAeKsviSDTW4y/JcB4g
	 X2pSC6zjzEktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680B1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070248741.2783.5313624930971589948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7df57d2ed233f6cc08833ce80d303b3d4b5e4fb9604498bc3da6a614207d8d
Date: Sat, 10 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670702487
