Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461408C0D
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 13:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B50C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681220525;
	bh=VF362e6V/iSWjUADPhn/xauEUnGeKWlMApdpbie3Go4=;
	h=To:Subject:From:Date:From;
	b=XZ2lgp+H3+SS6unNjOexOxvgwVt5WvdlvuwHH6DY3IO8p3Y5G6kDe8lmm0VI+8OnY
	 gabH9lFxpLIbRX58a9ZHiOxp2haIWhJL0+IsCqiHGt7DX2etefTPded43JfNQ7gb+Z
	 uVHGVDpzeTChi/h7Vs39ejxStPootnAb1d9nZY0flkq2nGutUIpQCgFK5zQMr+1yEJ
	 38MSSiiRjXP4Zm4fYMk3rPknCtcK/9uVGUMjVhpEST/TinthePhhe2p+fwEoOO2GOs
	 dmVlY4Vj14WZPfua2JAzTwDTuoeb9ajLftft7L7q76MdX8D2hsTuulNLWcu9Hy/9Ji
	 h5Xgim0J1Bmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5939C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 13:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168122052579.21163.13733668471146798272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ef6c4437cf28afd960e7cf7119ccc2fd1f1f9c5f255f300a46976c00f07599
Date: Tue, 11 Apr 2023 13:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681220525
