Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA49EBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C5CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665920453;
	bh=W77gL/8WZwIM2pxCGAs2udE04UPVdBMPZgbqoTfaYpU=;
	h=To:Subject:From:Date:From;
	b=VhgdktjGiUqmyShy0qUg9WzVpfLy3gEZ/TnE09HAZvFUXblC6RA4ie9IUMLUiETM0
	 VqWC70cnQxa4sQjxQwtXqFuwtIb8/f1f/kSWT/De1SdyB4yew/0CaEJ1krU8L6GpCc
	 +qWJk3lZurQUeXEo9hLGkvJl9c14U5t2xPq74cUyl/gaRiVcrJiGA5pOr+s2TopkPQ
	 8QBrNVXmsJKWm56NVWnwJb5Rg0TKEarl0OQ4ut9bQgaH37vThzP2c88SCEfBxhNeW6
	 7bcgjqzwB7S1bfeFf85Mu2bTLFF0JczvKyMH2AUMpBa2INFWgng1K6xSmXmySJsTYw
	 Cl9xb22XtaNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B1CAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592045334.5860.5564086389199986636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014500e034b6167dee5da72f9015f3582ab0a7878f935a7379817ce41367f35d
Date: Sun, 16 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665920453
