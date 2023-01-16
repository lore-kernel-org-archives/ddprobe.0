Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03FB10EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA71C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673841087;
	bh=+36MpBCmWratBwtvmmP2akIT1ozIp/K6Vi7btjvppWI=;
	h=To:Subject:From:Date:From;
	b=tbOjbSaIoMT7JDQ+MN/16ARVGwkgOo3j9edGmholDWf66Gfnc2q549LxztAQ4Iezy
	 PhUY6/R2EBLLJOoN8PkL4+3r4A2p2SoxeJpLZjChkeAq7FPrPAyWv6dXeUhj3igXh5
	 p9s03uRNVVi0B78OtEynoiKiZGHLzi/nR+tnePdspPr94wBrdsbt4UN+wM9rxSLhGw
	 G1vh+3CRYJJUC9Z6fYzf2LgrDq+WwwW62uRoo5pRxXXayChJ4ZQ6iWzzA7XpsG1M9c
	 lgVocLTzAklFWfw9M9sKYcfrffJKs2zr97m2eiH6UaETl90n+tkL0clgTYTC6DJ6lv
	 AHEPIZ6qh2k1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6415FC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384108740.1554.18322746948845104805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96170e7ce242539029c10bd1bf38769c9e6c746bd2f631278ac632d5a2a4cf8c
Date: Mon, 16 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673841087
