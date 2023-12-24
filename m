Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F2ED27A
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc0d8Sdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB9DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703443696;
	bh=5mAnzGT7hCHFjdOnWQzgeWU00lXN66qlZasf7IMOo0g=;
	h=To:Subject:From:Date:From;
	b=Xc0d8Sdfq9u0Wlt7Qk97IhflhQ7VuRXD1Gz+1DRADQiVNwhXs6kJ3FXLfeteIaLrK
	 LzvGJCXR6nVPQ/p1SKEGxJAYR6q5CQrscHtsSfvjiImWZuG9ZxjGt/xwF/c/uZcAoi
	 c8STYtyhVZQyj92ZuKnDjCDKJUScxkpEPFTQGQgnwc8d1g5LNzzz6u81HsxbVNI4HS
	 HpJ2EUnOfxFyYQ1dvl6qqabYJuCriSAALmEYmVT4e49Yon2yg1kLaOuzsphrOmf46c
	 naZpO//Xd3nkGb87pVPg4thqyvz8vFBbqc11+kZTkuNIJ7dqStYHUqtpRU87etByet
	 8dh1AmPW/gyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E298C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344369639.22876.16913045790845826418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f53a980827da5312e2a8bf6a7113e776144b9327a783fe588dc1d69201ba80
Date: Sun, 24 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703443696
