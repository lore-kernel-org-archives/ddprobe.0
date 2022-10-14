Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C313205
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E18C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665762053;
	bh=HQD1dl5+gNf5NsZH652/3f/GZ5G+0N+XwQ3ndfqQxCE=;
	h=To:Subject:From:Date:From;
	b=pHtC06GyMnuTuV4Mo1LLGu9JmotUtgcVMZqaTSHaFV8p7biFZC7xqTWLjKfLtjwI9
	 txxamsxYslRWNZumuqoJFDDH6Moj1drGlaq5HqEk99TIKKjOh/Onoi5+qrQ7UifdyW
	 DK85lkPLjtLygHrKcVpJ/IFc4Qpag6PjmGQ/M+nCywBiNzAawEvmsUsFFtwqm2l5vO
	 B1ebqLxh82JPIm4RAPuExc+A9Ujt5WLK6MNJELe0Xtb8lONK71qPgCVBZW2Wtj1G71
	 XrixOCm/2I1GVt+vK2p/IjeFty6UVJSiytQ7rma13fWoNq+q1KH97txlvfgkVVIaWP
	 Kv8iSXVX+Cesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7EBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576205337.26848.10481410716439240785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e332dda93a30af8564da42036b59b8610aa95dcbe1ab19dacbafb9f2a0e193
Date: Fri, 14 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665762053
