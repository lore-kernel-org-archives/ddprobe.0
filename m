Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CEC63A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E811C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663407653;
	bh=Rc041T07bUgut1z6rV08eR41EXScLkW/a8nu61UXL5U=;
	h=To:Subject:From:Date:From;
	b=H8Df+96ZDkwpnxSTna67s/VBakFLU9KvkKR51Nup5qG1zZmpKBhL6ELz6c8Q8R/54
	 saNqyjtxJV1jN1FzOq5jfrSHN65acTpyVPYu2/NXoytXRop+Q5X/kQO6XiBRdFfjMM
	 ra6AEdcIUPJon1KQTvdqFkPd9uv4tUk+XhbU+okyMFkcT1DPW+sExDlRbtYd4VqdpR
	 xzJ/L6EF3iSLziISHOSUPTSJ7DSk8ppZsVDDf3OJ1QgzcCeaO8kolNieuA5ECuDa9f
	 Ky6Jdc8kCRRlBrQpPtiLh1/2ZVYwbhOV99mIXx1v8hlbkBPUhBBT/HwUOh/LG4hwxQ
	 7y17qZNUhThDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E64C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340765331.21426.12539885144340234272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6c986ea50b8df2b99fcf18e048a86c366e3ad643c66b0e7a41a7ec7caa429c
Date: Sat, 17 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663407653
