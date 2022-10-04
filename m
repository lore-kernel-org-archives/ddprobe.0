Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD733D80
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715FEC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664896853;
	bh=YPYR1pjmdyi6QAf/ng5+fmzXIR9jbVuKubXmkegOzEg=;
	h=To:Subject:From:Date:From;
	b=ASETzxQM/RL7+1hOH3CrM6Tm/0J0jlg0oCPIOY6MkwpFo5CnFkzsv8RaHDgkGz+i9
	 Jzy1V5kxMXrJEvuTeY4z++ee0gnnLLNUQcIIa0zi07IAsgekpL1Pyoi7/enbNegDtQ
	 M6ZPgFbtO+7qVXpa0xt/vKiibQJweowXbsxeQzipqUmJnK3NtjoqQo6i4SOIkXyUHc
	 H0Tf4LU8+/xACW3YMRC4G5WoVg/2k52A95Qvnwra4Rzqh2XpPmmhBoFrpIP1FRBvBt
	 H5dxqgJ450VyrtFw1kGobOPakXmAApx9YCs5CVYtgaVKVOLbjlmcj5UGKi1DH+KaI/
	 jgA7KfBAHtFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535FEC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489685333.27857.4649462360468848603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945f58c670a1e3c85a5acb5e13f77d3fd9de120f45448a82f0bf5ca8212ce2b0
Date: Tue, 04 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664896853
