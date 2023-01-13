Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1470AD4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB63C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673634087;
	bh=aP/8VBgex8FMhGrQ8Gy5D+Mvf8ojNA7DCpWnctuSF/k=;
	h=To:Subject:From:Date:From;
	b=Qnev+wXnuNgwCLiMPWqHob9WZBAqQJysCdSwzhnjSLkX7uq3vXkU7UyzQXsd3p6Eh
	 TuHORPa/XOtdh60lNRIK4NrhP6JvZ1vJploR8BHiUSiBAQhFqkTCSL5Dt4xU+vRrm9
	 LRyntBbJHCDY4ewCVOF0mT6GNKd/0y0IdU/lFAW8YdTfAWClGIZGbBC0Pn7bEkqmc5
	 /MhF1F9vneN1sXW8a6PWrvnyNOG9BBq8mKOQXR2beWIaYvJ+k/owv8Nh9AeT/jquPl
	 Atnx1RGSJOwCE/cuNStlQRa6pgPae7bqxaS0+vCI4n65pG10T9KCcsnHzo9FoDjwxI
	 RcNhtsMNb0jlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70402C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363408745.14805.8859535650747491573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9b94eb9a73e0c1d462f515c699c51e801e17e623e721f8348659d393ff2b6e
Date: Fri, 13 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673634087
