Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A4C111E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DDEC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687870388;
	bh=6boeesZITqI7eZmMw1Pmof6fXHc0hMfGTnLDOonubzo=;
	h=To:Subject:From:Date:From;
	b=csp3TyTqFoYX0Q1c7Os+9I4dWdcGiQqOM273e40CCHFDRkdvzq3xFng2dBaSa3hW3
	 ZypMCn2rnZEvl/JjJrnlv+bJWWHDaLdrQXJZ4krXVMEY2VTRtu17RvykgOEwC/JbEo
	 uvE4nzZB1lh6D1Ao8ELDlgGTAQ3dt+MkNOdsnXTbQR3ugwQBIMHp+sQCdFHbKMnD4n
	 xCxWB0Kp2Le69E1Itg5bSFCiBAsE/Bkfd27p5MJMR21soJG45W2pjXBfzNzpJbhpsc
	 n/9LwT6vjarmgvHjRVL2dvtb/hPUBaj5kmUc74qdKBqzfdvOUaI8tCDT4/tws/4xZQ
	 nIsH+Ij1t5Nbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A8CEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787038865.6292.3233172703337160992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2cc8f86fe5859895a2452f6b1a799fe85befa38166515aa87fef323718057e6
Date: Tue, 27 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687870388
