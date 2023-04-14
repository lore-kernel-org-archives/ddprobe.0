Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498012C9A
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7309C4339E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681488785;
	bh=DQrIbvxRhxdSGLDNTXOMfkqRXXkTlnjkof3bmbzJaqc=;
	h=To:Subject:From:Date:From;
	b=rIE3DEZHhajm9GbUKD2WYVKzMgQ+AMUG1yor6j/72oTrd5PBP9SnF0ijg3yp30yom
	 b4mBBynvoVTp45m99vtH3AF9v8M3+vB5PefgbV+yjWxhAiRdRwe+YO1xAWtnBEaxDR
	 RXc8A7Uc5VouZHch04zmiLvNNKWmks9IoUvv8DeFxkmjmH2PTyz9fvurmvrsx1db5C
	 zvgH1jkwaIZzQ0yDkt8klUBy5Vmli+oJ/xkWGDZeumIALR7ejEag5ZtgwmodCKBGYo
	 cHmiucmdrWz9kGW+65NGg7kruoWNB2AzjAljeq2xwprx1V6548fgAaIF52rOGrKSMS
	 NjEcw2oL8dqoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD930C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148878576.13461.8216640156193016850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef3cd7f297d78d08efbd985bd6de29d47d79ac7809d3050038851a5b6132959
Date: Fri, 14 Apr 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681488785
