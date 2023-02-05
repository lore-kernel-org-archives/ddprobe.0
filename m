Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C627F
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A8CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675572965;
	bh=XMUFe1J7r+XK2Zr6b91JgYtrsKboNKb96tPhcHSoEZg=;
	h=To:Subject:From:Date:From;
	b=cqWnxRDILEoR01062C3EtF7aPZ0PnGFjGe+02jjE+JeiMyDRPwQiPG+mw3TJHJv/d
	 ssmOXa18hBfXy0ND4qOocHiyAjnMmyXg6JzBi0PzzxTDWCITPzfq6+trJrDBrPQnYk
	 s8bdBNA9Dy2I3qbOIu+P//fgYwISoLNRjnJ4rz1pUpda7clupJh1LHopoTrckB8oZO
	 Jg6C/Wc7J+OlDMnkPf7jChKxPHlgDOgZAkXjajotquKFDSpWvmjfb/0zmKpXLCXFS8
	 0QZ03Qe6NV/t8b+vtzM6DXie7Xgdz/bHscImQUKwDrGhd+Ft6kpH5AiTx24giX/NRu
	 vhQwlKRHVXs2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39CAC636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167557296576.21215.4334321557426072704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce05e1ac36551c9b565bcb5c438905fa486306e827a1fe8de3af3e56a397197
Date: Sun, 05 Feb 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675572965
