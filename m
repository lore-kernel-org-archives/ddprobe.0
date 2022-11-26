Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA5617CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7328CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669447854;
	bh=qvhS6OgIX0ONdINMyHz2l9LNHFsKnHNe2gch3mFF4Gg=;
	h=To:Subject:From:Date:From;
	b=lT3UoayWpBRaJLTi1OqR0qqB1VlSLgBaEbVnXKaxaQ0OSY4iKICJQggkFoLlrjeu3
	 pOBqkrXWuF13fWZ5HiOOSVOq7IegKmDpNYqitQHS1csbnxduG81El92Q4CWjbOYW7O
	 m7k3X82ACBLW2nBK5PbwtNKjlb5JKACpe7vxDYFvoGDTg2zfGjdT4R8ZduK5BGr375
	 SSAOt3caGoJSimNTgEwIJkFn51kt4ENtYmWBYRJalzKwyT2CzwSIDZAHvLtWd09p48
	 ZnzIgPqhwp2hNThPmSsXQybDGf1ew7zrIMoBgcEJsMDoO9pNVrQmBVP+rrxK8fnIC0
	 vhzUTIDR3GfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57742C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944785433.23188.10890787832926919477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df681b96cb0466381512ed0e6949ba97ed8997f2c6bb4189a1fe20ff064a474
Date: Sat, 26 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669447854
