Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE613205
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE68C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680476765;
	bh=R21hgkJvEcu0dW2g2FhfNDTdWmykBLkeApO1J/ZyubQ=;
	h=To:Subject:From:Date:From;
	b=QcK7uIh//GWbN2jdvhh6FUwYTVzF7658cDyawaw2dA/44aI0Iw0uYbBZNHc1fMiO5
	 DO6IDCJ/CmDuc0YQTmefmXjbJnZKR6MxYJtEsWqUOQgXQRY/vW71ZzXT15nwgcJJ36
	 nD8VCGkk2lHonJEijowsLBgikK0528zz6qoDEpIkx1CSuf4tDczgTZ0sx6LHS7f/LB
	 9N6YNjhNI+oGNHGKSTC6T5fWWJWNmVbJtbmS+n+cKU19HWPID2nVnUMxnnlqnSUdn6
	 cH30dGkWDS1yDplKpza9R1dgfwlaKw7hCQ/liRs51clrjOU62AcEcevLDyeF0eBywu
	 fHryNO+f12Ziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB6EC76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168047676573.3055.4002563969675237882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bdf4df8fa86cd58657d9a8d5f2d6faaaba44b00b279ff2c8805fb07ba0f4fa
Date: Sun, 02 Apr 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680476765
