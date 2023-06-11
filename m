Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921D67469
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09DBEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686480726;
	bh=/oCd/JLOyja8vStHhJ2qva7nRVotq4VMDNN6/hvWuJk=;
	h=To:Subject:From:Date:From;
	b=H8SUTLA5xp9aUI4ZSEp77qNgUsewf2cgaMnD2Gg3I6MsY0XdknlnhmE8RQoOUC1X/
	 XMa9OeMpTlDsCkxhNEVSbgneKDi1FqW9Y4LzFgm4Lt+t6oY0qLky+bWt8DcsbNcXUR
	 YNQyVgji5h0g5wY8JDKAJqnz1dVfwhOf/s88jLbhtx0IvG+JF5cZUJkdyQld0SyGIS
	 t6SJoZrW36y6N8S6k42hL/L9VCJPpxeydyOngjigDOeM2pAGBjW+ZN29Ca/890Il6H
	 p8QotxuQ4BTMuwjPXlKn0kUYxjhyivf4uvEHTpS6z64mhfc6+OdtDCfY3pdKdpQ7lm
	 CwbJUlHYjSD0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC19C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168648072580.13212.2107932025688867269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7388bb9cac93e222b2a2789655d561daaf79082289b3f6404a5d55670257450c
Date: Sun, 11 Jun 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686480725
