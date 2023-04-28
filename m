Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD573D86
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA85C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682696705;
	bh=CfafbDMO8Fqm8nHehN0uyGdXni621IK18EOxKrXBI24=;
	h=To:Subject:From:Date:From;
	b=XGWD3RGVPo0sppYG7Aj2oDyLk9rwj+qi29LeZOEFre0TdPtOIAEhtkBfgs9xBsm1+
	 uFTgyPKz+81EJs5kdW0cFxiaOqUkLXKu/Mg52vqPsoNvFCEXNI2xwd4cAkgt/TjyPR
	 GGWGJ0dvsY+nX37oqRoThSA/Uhy8MRge0QJbLElloY3pEsRi2gUXfIqnPT25N54kM5
	 BrYkF1tMDOkUnVpHz7Xijjbv65VA7a2tcWo41df4WhzvrMpJ/wPx5zq16c2Xbgq2Nt
	 kiBl9xPqocOB287hmYBKee50UvbLjWkJPGit1j5+okgTc3fFjGCxYxb5IJa5jnIr5T
	 v/ZFnHceSVXuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22CBC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 15:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269670576.27808.10321843157074022787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1796d5200a364fbd8df93592acea43bfa86b5d99f6a97caa14a19f3c7d308d36
Date: Fri, 28 Apr 2023 15:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682696705
