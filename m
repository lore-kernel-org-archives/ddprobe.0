Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A8CBE58
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKRo13fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 973A8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699937896;
	bh=eXdTplxbX0RBSVlMVZcTDC3Jm7cCKnoMBY1mAgYxrU0=;
	h=To:Subject:From:Date:From;
	b=PKRo13fnBhtFSuF4PCRpRziADRBlYxIIfwgOXQ6JgMyULo37yRf+LQfCXkwPdNpFL
	 wgaXTfW0q3UZdAu+2dWBpNKGCKXPAQxaZIjj+1CgB8+6zr1sYtS8k/kTRGwdhOpZjH
	 Pm18l2+NEFByGUkNpIy+O6I+I2JHpsoi3/iISaB57BrUZRYjLMlXiygDwEWRsPUWjo
	 CxpvcPF7D3qmue14yvq4hxT5OJD/OHcZrPF0cw8L5MdQDjn8tlTA6djH4BZpl8i1xv
	 63XYY4oc0FRCz7sFPhDLlwp1TuibxxNYWLhpeZUVp3jNwbBjHPOfsiDBaNmlJj20Bs
	 VpiyGnkrj8owg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76206C4167B
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993789643.7041.393085657315005392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7899a26b7c9391f328f3b5ea51a71c5f4540a0b62c2ddd6ee6144d722ff4fe56
Date: Tue, 14 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699937896
