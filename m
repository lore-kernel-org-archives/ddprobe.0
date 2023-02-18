Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D87D29AC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04441C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 22:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676759826;
	bh=DLgf505ELvhJMt2fRNMM503GtUDx5Cd3xOtAxmLt4+M=;
	h=To:Subject:From:Date:From;
	b=S6+4bsrBSRpUeR49V2M15TaYrQtMs+3b/9XR2ZexpaTFAlaCI+22pitbYCoRY/PcK
	 7hw1OjzvVjkc+zmYYiB6zIfQP9s69+ZbryT8/iXIsm2CnBOzaEWaZsawSuW3WWSwqi
	 EGGIEuO1fIsHebWTV/CFCaKsxt7FgoB4t39DOIlJHYMzKYLCLLchDPgrlbkbe2sviG
	 Z63rITjS2HsuOApKsV5i35VFhEA+6CJhLKJHdlI5yNEsabdVFs1UCZQymCfSwjWgsx
	 5Ym9ECxr6JIy2Jx5XBBZ1EA7oqtBI0qM3+tbbvPH8Pbr1MM62akY+kuV6xBdKFN+Wp
	 7NX/slO2aYreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D1CC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167675982582.20516.12645871987621968564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3874e21b81e29c99ac505347b1c9386c519d884d351d565e2a09cf3e31ace90b
Date: Sat, 18 Feb 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676759825
