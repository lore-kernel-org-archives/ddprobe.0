Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163CA1944F
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn3o0Y1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830CCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698227296;
	bh=ZsI+ZPFUfsS4Maz8/uWW8Woln/BqWlzQEe4OQfCmZSY=;
	h=To:Subject:From:Date:From;
	b=Cn3o0Y1X3SjY5I9EI65TQmXLoIsWc8oMRHcT1HfI42qWwMfX7hxZgMSeG3GWbbcFR
	 AAGaxNtILKW80D6qcE1Sw0Hna0MKIQ28ruYz/B/u7UgGuS8T9stL0IYm03ViGrMUCk
	 hndaXoU8lxSkO4VZWNJVo/AHZINj7Z1YOvzOeTZS979Tw/Mu/Oi5w9NRDU+9llxWI5
	 b9KqUQoX28Luis3X0mCT3/ZnI7c+arqwp73RHPpZRzucvTsI9sga9udlWLGD4koeAF
	 JNuvUIdfSza+DiP9Q7VFK5o5Tag3BCROoxOn9pvkqsi0+Kt5wlmNKgx0KI1dfHAOb/
	 3/zjXi/KLto/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635A8C25B47
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169822729639.15578.4116915413496504905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49e194fdba5a30452176cb971e3660b99b54caeabda446b5f97dc6bddba417f
Date: Wed, 25 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698227296
