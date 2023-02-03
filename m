Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3239CEA2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA508C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675400165;
	bh=Bu35LHbu10VtuRbUHyEMGC9PJKW4Jv283DkORfYhKjo=;
	h=To:Subject:From:Date:From;
	b=QbWAOuIH2F8YRPygt2fDQudmXGTnG1LxeccQ36YB3fs2b9iRpOrtrwcg22zP/ZPEF
	 hMMMYbDjTFApTWuHZk5VeqJprFRH2tGWkr26TAXrBFlKiTibtePNA2+tpmDTHvVecp
	 FNWl+poO5rrnFLnVHCogFGXXlji/RskAG4j6dtw3wKUZnAeAzCll862FpNG6Zxb0Av
	 aKdQyea7A8vdXyk2+ZkUEIQ/x/qV/TuUaqvz14aDYiAXTePPs5DBZZkQGMsD0YFoRT
	 aU2aYEdZr8DrCYTENcpIWVfqrjgDJclFaPe+HIKbX/rI/5oCNh69vh40djWRmVyzhx
	 hjBUO+jxrW8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1163C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540016578.18795.8491928279357872150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93baa4d25eec209509e18755fa0fb7c29f5a8f8c8eec77eca82f342a0d7c49f
Date: Fri, 03 Feb 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675400165
