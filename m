Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE33FDC
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmpAjXjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AADC433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698392296;
	bh=ARN9Jr0rLeSRVBCojmcSEcf+bwqC2whCcon/m0ME4Qc=;
	h=To:Subject:From:Date:From;
	b=EmpAjXjdlRMFyNgtkdCVcVjgbFmr7EEhzuu6fGy5NhD0+cR5IpadLYOhNIuv6jyIL
	 pJQNq3k88KNmuX0ydivqPIgr+mE8vNU3vnpMGGiCxWX/NhdigpGftezrTkwE+1HZki
	 Tlg0diMqcU8fgOz7noKMp8iCsiWr+210Pay4aGiZO3E7Ns/DHzn2+LYm/c6RDx0RYh
	 4tDUNeB+hXRZzVLWhJKM7SetEMZAm7V+n7BJz2JkG3UDzoCicLpNuhrRKWmumI8qBv
	 ACfluf0PhSXETie2P/NwBrvpeg05nT7X33Trqj5GRTdb9Nw5atWlkw+YSmCdzut6xe
	 3cYt+NMfpbrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650EAC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169839229639.2450.15172619266592956864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df20ae805e14853ea6568c1d59c6f2c901491124e98484a4ade1a77369029bc6
Date: Fri, 27 Oct 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698392296
