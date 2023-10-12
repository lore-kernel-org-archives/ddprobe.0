Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525F01D68F
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKBV+ZQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3407C433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697153828;
	bh=cVVGHQt+5px3qdEoMOOB3yoKWIYoTLGLGXX+q4qN8mI=;
	h=To:Subject:From:Date:From;
	b=MKBV+ZQ/WLqQUhgGajSRq6cECTWa5ZChOmWvAb1RHAMI6uvJxwe8/3TV5RSq+wleG
	 VKTC6Hk9sjvFkzMPbQIYkzIssmEUMU/iEmX1xcT4ee8kzEHchHZMB+CFPdWJ4tS34o
	 GvVg9XMBLL8y/BaqePpBIsa10tGwTKZE9TJoRxOCPeSnUdykY+mCQ70ZOhjm6HUyLL
	 CWiZzGmO0YvEtP0tiDxgyJP533yHvRHkP07fMz76Ze5SJDMRfglaxl74Sf4gsOnqnh
	 CICTi6/yKyAp9+Jf9gXyqVf7WEVKNPbjonoVOZ+y8bL1t3AEcTY/jdW4x9xmmxzFSI
	 Dhl/VwAELwyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DCBCDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715382871.17873.16415625228031957241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545454e798e9d0016c55b674679a0bb72bceface8fc5eea83a0f7123301882e6
Date: Thu, 12 Oct 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697153828
