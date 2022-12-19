Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E965510EC
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9013EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671489087;
	bh=rEj6wm8NzJK/5x8RSPnFvgGx2UIMlLPbbdANLbogOCg=;
	h=To:Subject:From:Date:From;
	b=SW+iTPjd+5NeeSKJRt7R2lkxb+yRXYcEVjlqZznpce4L0McqG2kSv3PG4t4rtnnLG
	 W4JdA3DiHPbwH+4Gt38fvHzu5bqm43Wh+yajiH6FhSYOEb/9SpReUHjNj3eBenfQBh
	 Vimwio93A7TAAGiN79je+S1097KAbbJgg+ExOGKVe1nQMfpZxR5pfcwzCtO5SvTJTT
	 /yyn2TVbe3uqUmmrTxqxD3GsprsaTWS44Gr4xenRyxAfoWhILr2bK6IK29VLftK7v9
	 qOK6V3PbZtR6gAtKxpEQ/1h3CmxLAITD/2clTxp4cE/ZpB7GkThIdxo2U4qHjqtSlD
	 n9bc9anMLXsmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71AC9C001B2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148908744.6687.7498919687635286178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ac47d98b5610fb101f564a669a673d394fc4fff5e1390f465e306a5eca9c95
Date: Mon, 19 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671489087
