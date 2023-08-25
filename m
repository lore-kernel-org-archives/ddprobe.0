Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F44617E8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18F6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692942848;
	bh=NJ1Aon/Zhp514wYp75fszc6c0XZ3bV8cLhmRWyJmB7M=;
	h=To:Subject:From:Date:From;
	b=rdWDVwQ7+LetRKyvxkul/n74FoKHm9VPoroZCwz1dcq4lmaWnhM3JSogA66NnZIcb
	 XnvJNGlrGf8R1cRhIciD2aayUc2QBw9J3fyq9gtMWb87XHMBaRtMolyymjWqF/wsCt
	 Mc2wFkJHSKeLfO6sw/FJkJXye8OAj62SJAaXes5941BjdUlmg5tFUP1mBvyMk+jLug
	 /yr47xn8lSyWcnXr2j13i+YZ7kVUWLz+1kVsb7su9i40nb36XU7H60Ip0BoIpnVkiY
	 a5FrAXiYF7G75MTc69Dk9tWRw7CnH9XC6SrHAdgI/kUAwYxBR9fJtJ9hcz7pWq1FJf
	 XFpnyUtpGqOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A614AC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294284866.17340.13645707064560308241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5448886088f879079d8165925e68d8d53892f943087fd4c0b9d0191504f75add
Date: Fri, 25 Aug 2023 05:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692942848
