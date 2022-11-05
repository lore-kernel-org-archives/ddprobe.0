Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BAD185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F50C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667626254;
	bh=4SABFoiNir5cfMsRt+Ph/8DWrYWkz5aodFaCM/XDKaY=;
	h=To:Subject:From:Date:From;
	b=aZIJcjowTR05bJeqBuhE1J4FnSX2CpnVlrwbT/B2P9RAelKEK4Ly9PiLhslEtbque
	 gmM3ExZPqjegCCw0lNDhXeqr4WpPHnv8d02K4MhNdRr2TG45c+h81rQIutSy7b4xd/
	 BD/0J2/QECcaGQCxyIdl0Z4VZKz4aW0ANoPk3qT2UOdxIUePFNqc5Myf2NAPiba3wa
	 HYbMDbzUVrefeSxy0+I4QiDUC1JsKOjPBFjY+s991f1P95GO0zIZXdRy2lXBrRRo/8
	 qALAZvfvMiIYkTnvw4fTWBcLT9XJlaFN+DG2BPIDORIQxLHRC/o2P3mMEvkJ3rVRTH
	 GCfRn85G6Oy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68961C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762625433.29394.4544477010522379902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f737c37ae3541b9c558e79c0e86f976b9a8381ed0d9318213b14fa8478f932cc
Date: Sat, 05 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667626254
