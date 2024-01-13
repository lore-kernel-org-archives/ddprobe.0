Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DAE210FD
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xla2gj19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F26CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705154896;
	bh=vdf/5qtRGPB3ZnUcD+lfRSxtbhOL7+z3c3Ik8PNz0Ws=;
	h=To:Subject:From:Date:From;
	b=Xla2gj19WMvlg4BuzTKtTYDB93U9p93TQvBzRmvzoaMwfktqQVZy/phvB/inSrS27
	 YyG9AQUU6DhbcRFCbvJMTo1TwtNQPKA/Taa1wsfYuK82b5+sSf60hDj2EG1u2z4pTc
	 w4Rn157fEqt2PaGt9bQjBf1nEgEvzYRpgaGDAJ9wASrDAI+nkYaHSA5aAGK1pTWUSR
	 8m7JfmAdGYXKjz8nqXv9G7iHD6W+rr1/aW7ooRJK0KJOCWXmHHVSWs4d98l0+TfYZw
	 hbDwpjn23geQcqu0uS5xIByZFkrx5lPbYqCcyrYImrLg/HJx7LrbpZ6ByC8v50+O/X
	 PHaeGm87GPj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6692FC4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170515489639.20274.4108453075362136060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7187d6dbacf2f3bd5e5c30f10fd250bfd609e4e82d64190ab3af6b5e6ab1939
Date: Sat, 13 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705154896
