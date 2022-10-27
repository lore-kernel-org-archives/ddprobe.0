Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C855F1C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D96AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666900254;
	bh=9CSzK28H6Ta9ZcIOH9IL2/fg9EkC6JMD12ifR8ksgYo=;
	h=To:Subject:From:Date:From;
	b=oZrvkKbdcVCAigCmWM5FAfLuxKD7Uv6AAofAOpy8/eL48cWL5B+V1lC/7TbGc/v39
	 z3t/bCNsC+FhpENN6U7ojqehTxuZEgf3byXVeeTT65BttrSnEQcHJba06D4hKHiidp
	 iWxVSEZa9Bez6PJ12nuN8caMUVGU3aykwzhbXg1mhCYSfOZStjnMIQ1M5xherRQvWp
	 29WUDON4NjxKrwvwOmXygvMP6zirb3jLDi4Lvc8ULAV40ahDS+JJoOUTRS1wMcJjtz
	 AK6mg5S9wPxxHuheU3p247C5y0hleCwuiGXE8cYPI+vcq6pw7eJI9jGb0i8+j5tyiC
	 jHu9u07fROiPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5464EFA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690025433.6259.1968969151442158603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3edab7e698e9589c8c7ae0bc3e63779f38f2a2251261a73d056b4ce6ffd17a
Date: Thu, 27 Oct 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666900254
