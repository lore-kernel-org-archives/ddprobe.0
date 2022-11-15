Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDDD23C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ADEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668530454;
	bh=rJu/ZK/uDbEqJJUkejw48MKgxXJSXAstrBmVMUrk/ls=;
	h=To:Subject:From:Date:From;
	b=ADeqnbwG58We/VN4CivhHu+wk/5zzU1DCXZ1PzxvavsN66w7zukTtbKIFxQX3gyJ8
	 IfJuloKVC3c7yoBZ391HSYrzQlKUa9/VQi7YhK1fVQQ6mKK6cFVgBBJ4VgFKyvxRG7
	 44Wvaa7Qn9KmGlym7bGxoC+DY8L4Md0kmSiUsEOasDTvjwP2SyyJhOpbbtg/67Egfn
	 1igDG9aCLsl9wHgs8qb1ZYT0vGqCWwJFAXNjYtJhST2fe/d1tP+UimHNJNt3Qr82bv
	 sflgjhTIWzEykKvN2n64Fwh5KR8kLZaXwlAPz181kZtBeOP812V+iI+q+gC/i+LR5/
	 IYpUIXEtIQkeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568BBC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853045434.4977.4765149481648622267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d7b39aa898eb9f8080d455b631aaed7bc2fd806e9e28a9c8fc21bb71846478
Date: Tue, 15 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668530454
