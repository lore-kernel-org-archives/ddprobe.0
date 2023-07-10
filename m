Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5641F16405
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF607C433CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689029828;
	bh=aE7GJXzKbLBmb3usA0OSgfYMGm09r3X83Xx9eUi6HVs=;
	h=To:Subject:From:Date:From;
	b=uIllquyxWzyeZWfBu7DwQYxyz6HL6QC6Gl7z21Ykz85LUZW/AXLc4VmsPg/BCC1Zu
	 KXwQBsy5UFYEelRhIvS2st1VTtsJef+AgVpticpB4vPIC9Wm9tWteWyRR4M/n9Qb5T
	 Eb3iQQeSzyCwHR63t80ZYslzNemerQlfTC9pmyH7gf5PWH9VOIXdnRDZshoZtDvn3+
	 HZvsR8O6F3AklXawDxWlhYJaQ/r7UncpIhRVdEI+s+Ca0OroKLLes7FEAxQLyJMPci
	 Z6efWe90D56dDLRQUvsP2U4cdQxPJ40klbDZfkxFodX7S2nhhKExZC7h3HJElhSR+/
	 zki9dU0or/lVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3855EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902982866.5432.1347118524270739349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a20c3d6c599c13db5147204ec72df3af515227a45c2ced66b2014449f24680
Date: Mon, 10 Jul 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689029828
