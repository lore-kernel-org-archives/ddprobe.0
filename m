Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21E81FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70297C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664601053;
	bh=NUqKrvB3Xk2VMY0bQySdyLI/D42fQkutoFzPmQ4ahhE=;
	h=To:Subject:From:Date:From;
	b=W1o7C1es9P/yavLVV9bDenc3KQ0LBCDxedYXwLMj5NorAkswbFRemL8FqcDQveJyl
	 CbWjRqamo/jFQlM02oA3wcgxYA1tTB+NjMoMpxvQSo91gD2KV0T229njXSrnw6Kgd1
	 DN64OJjpFveeoLAngZK4Bx3UnFYAh+zytkpZbb/M8u8UMxY41+Pfm3rlumWLs33qzI
	 sxz5lkqFh2zI6iEb1LBAavSLUmTqxNHgVtRuKR14iGZghl/pXiFa3y3cTkXMgfawEi
	 kw/z3WaRedlGrocnxrFuwtI1nR4UkI9rprH4PaEOGCEt2li+Jz0rDBhqnNATjN6Hn+
	 APsKZnMKY7tnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5680EC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460105332.5122.13907933864012327638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612b7d1874369867e761f8abc69e92a326a85945b903f86007100c5745d41630
Date: Sat, 01 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664601053
