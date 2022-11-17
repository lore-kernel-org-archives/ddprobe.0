Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73C317D8
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA65C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668658854;
	bh=liuMQLEFf0OeUNk9xvmAvT3C2B8IbtQdCFVXUR3AKaU=;
	h=To:Subject:From:Date:From;
	b=orm3vm+oWaaC7A7f1y6tncfwTUZ/F/HaN+BHhgMlnLLRSP70nhpJaStRRrAFpYpSI
	 TuYskb3knAKndsI/IpXxJATnYPsOu59ScgkflKJXL/5W3flcd9PGvtwEeW/nxVpDan
	 YLzviv/0DeIqMEzFtrzkle90ltG107a020I6tjopfHDFcVN75vbuUwV1aeHHLiCGxh
	 UJ1ijT+1VLqrcpE6JWamwiefnUIqHDNlzivc+p7eq+9Ys83nbXqaBUJdSuTvT2yLxb
	 dXhAKzlRXG5C4HPAAksoMOyCNyli/mlrpa0v4rxrBkPCTx2GymHvjhsLmLwSc7TncI
	 NEjoHUXGV7Rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C06FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865885436.9286.12791622451550363784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f1f15cd7c65b9ea24b2da97a6b5e5ebcba0b1770d87c771f10102c29fea6b9
Date: Thu, 17 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668658854
