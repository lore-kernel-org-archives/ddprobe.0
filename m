Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89E97E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BD6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669522254;
	bh=5BWtB7boqzEhvcsGLbD0H9oSkBTWhr9F1B0AFddfsKA=;
	h=To:Subject:From:Date:From;
	b=YoreUC1H01rSGoMeebA+ujV2yW9vvS6Q2C6YgKmRUpcqbvlLRCod0gdqATxRSUU4n
	 4BCux61laU5pMc0wnV16OA8n42OfDEqVwHJ7WCVf/QEercDq3SGZP7fP4DC5aoA7YZ
	 sl58FunNGdzk3Tqb2vNGNc2+ds2bkxPwf0IoSV1mmFWzrp7LRskjVT3crkQarLj8kF
	 /yXbRUeNKFbzDezN0lQiFQwXgrdXiIc3cUThp+jhKKFsSz1dHc0NeiSXRVtYfAwg3e
	 yvoLXACMSPQGmiLnZMGbRv/oHmyK6Hc747eUhH7n3354wnq4/wTKwuz545t0vAVR0/
	 VQY0Vh1hQcn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AF4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952225433.6077.7251973007126132218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bdaabae80df5b1c0dadb29ee6c716d4ea28f6a36a1319708ac3055dfb704f5
Date: Sun, 27 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669522254
