Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72968F47
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A85BC433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672768287;
	bh=1Y3hQ6jyAXrglNMXGnSx3/hVa2PA5UVnHrzH4+PLJLU=;
	h=To:Subject:From:Date:From;
	b=fJpVCHuNN7jd8c0HQ6OgajIrUqYrC9AgSpgQld3IDbSFZf66WF33kvIXPRpYfO0Wq
	 Rl/EfeWAZFNW0RpyRHYzcDUgW7NfFRE/uDiQ1wvnV8RzwZ86Iq5gkA5FlwQTabAlhd
	 4ccDPAp6fDm9c7IN0GedgzG4hnrSKkaOfC/SptWcYJSdqGKVVhB2Vc/Yuc/ecZj+5u
	 5hiVRHyCw7CPn7hCaJHi2OkywHAu6LpigYAiWf9jR6WIW7QF9itGNY0+uKRnmGMbnY
	 aL/X/0J+kmMKBLrgqiKQmSxismSagvBh/5l0N0QusX3cxWlTBpceQsdpi/SjFXobOu
	 FHmUKNvPPDkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C67AC54EBD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276828742.28378.10257219634164437959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07bf7667388b34cb202909d458946e5b41c4522fe123fd24e2738a92eb32f34
Date: Tue, 03 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672768287
