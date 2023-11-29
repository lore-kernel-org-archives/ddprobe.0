Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004CF21A0C
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVgS2umL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761BEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701286696;
	bh=8uCp7HP1fv2i6Bg+m7rB586yLegcVbyNGKDChfdKa2o=;
	h=To:Subject:From:Date:From;
	b=XVgS2umLeCgI+ZkeTFZcfjIcRR377nagGhph8oRYfRNDRq8aEenB4qUkVwrFvVK3g
	 hFpG4jAgnfI5DKPMOvZ0vDMjYExb7HS/PqG1bJ/7hx+d/WA/dShgYbhE1nKhZMNocY
	 bXCSdyLlDMpYULZQ0v81dvaaM+bIoaZ8CFsCWYM0/8rxN4EGH9KM1u9QkhDTTMNtU1
	 CyP7AXIwe/J2PIPi7QoIODc8mf77/qF7SBpS1O/cQZR+pcHiicJ3yPyLkiX0qGf0Ar
	 MZMD5241BxWf9UiVmpV6Yis2SLCFbawPt+lzXdBIbqQmfoXi0eEwz0BzXxX+nVcUcq
	 +7JaVJ4zDsnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C076C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170128669636.14805.11045815480771739748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d0013eaa834499ee3166c18c08ecfded289ce8f95ae3e5dd1059149f5e3524
Date: Wed, 29 Nov 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701286696
