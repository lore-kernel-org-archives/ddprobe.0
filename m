Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB187AD4B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 976EBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669743054;
	bh=yudSHAmQz0ZwGH5eULTV4MIbm3SxGPLzPceHLclZx4I=;
	h=To:Subject:From:Date:From;
	b=dZgwUXGKD2p2EfeceBIDiBximu3parz3SixvFHJYawsvICeirejOfvuPyfcDF0ONZ
	 PHHPfIGaDJuFZ4GQT5Cm7NA+d0sPltWlmjwWlg1POWtrXZ7jC59Je710/Peq5pLkAF
	 TMCPtrW98BmyBL8zCdU4QMCJfk93WNUmSV+kYuj7vHCdj5pg0O7EuKRKbTzQIrMvAi
	 PK1MEqX+MRAO5HwyrZ+0lnaCI/X05noyd/g4bymy6tfSDcr58onzeL2rIR0mcpR40w
	 osUU+3IzSn6euWKPXFTyp1ACyvNHfkaET3axR1COwac9U3Y0Fyb7eySceNLaxZ6M7O
	 ueJ3LuG0Gxuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75480C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974305445.32483.3928937816857892220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70fc6a2598639ddb1bdc723df8d65ef8108edc3cc25f75cb9f314b1aab4916c
Date: Tue, 29 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669743054
