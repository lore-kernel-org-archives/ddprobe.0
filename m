Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A737F
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 08:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E6EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675241045;
	bh=WSrmYLFur96OVNPA8mez3sNg1buwC1DtBFqm2j1YNyQ=;
	h=To:Subject:From:Date:From;
	b=msBYhkLBdFWh+hEIju3ey6vfxiruuaxDXhoKvm1AXvACbuH3W9MlVU4PoftIPKBw+
	 b1HoRYgt4CKCMeR8OzXYyCbGatW/KM+rT7XNMESzMStG/tqvWI+y2x8IIZaVS+l6j4
	 YdQB33b8Xi1gPLEN7r1c40y8B5t7NDFZQKC/DD16u8vnBBSPpoLiH1lVcMtQs4bent
	 0o5E+wg0TMwHSTYPaPJzhyoY++fXypUdrfok8/GFuav6fekFeQc8xQlm6IHTvDdan/
	 +C6JiZdJ5epLwz2DJv5M+nlAk2t1liNWLX6NS9vRbpKcbN7NdKmDPIh0cz4S+pkLpu
	 ZzEjq1KhhCURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F31C38142
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 08:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167524104574.16835.8294556832892607281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4736087f9a4d256de3d9a3510cf49c7511d11a02e3981157407d8a6729ced669
Date: Wed, 01 Feb 2023 08:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675241045
