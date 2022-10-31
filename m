Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D671E23CE
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D82DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667224854;
	bh=ZlZ0UfS/fF4XiormBcQ4C0CwQPXZAiDZVP/2TzviFQk=;
	h=To:Subject:From:Date:From;
	b=Bz7bEbBt0wYBfoKQL3nDDOrFSn+pUO/SxLQ0P9i+yf4iZu5eN/+EjxvMRN6gGUIqj
	 gNTW/mYChiHQZsD1DiGuwjEjbqQ5R993idos7ZSjBMnMAntdZh7ulWBairt/52LQQf
	 ouvs5+3XofXAyUE0NOUAUsE+k77i+SofdZhUrBSym9LhX1CggVX4f5H/JNMXDeHsc2
	 xhS2OEOEeSgWYkrwyyt4oiATRvZpzPAMX0dWaJVyoShnWIDQbdr/ToYJgzmHLJkgUx
	 /oDKbFrK4a0yg6cTMNf30C145Da5HHRHQ8UvxQhuSBFhqIggtVNw2zUIFxBMS/YF5B
	 BsZUOwWyicuPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621DFFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722485439.9285.8458571942302055389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bf559468319d32b0ee2c0491c3fd652c58bf6a05cf3f3cc8d0a6523bd865f1
Date: Mon, 31 Oct 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667224854
