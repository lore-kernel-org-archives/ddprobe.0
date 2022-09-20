Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C290B1872
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AB1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663673453;
	bh=5jLbDM4OWKR87BpthHHLbu5B0zGqLaQhtUe9VuWWjgw=;
	h=To:Subject:From:Date:From;
	b=XVDDd3dmpAlcFlBf5/Bk4lHZEh/iEB2GA7J1Cy7R665DRJSfdG+O+ZXKd+fXgVQPi
	 MWHzVnJvLVoPIAC3GkcsBS420VCfPalUKb1CzEcSgFOXgZY2hCTZvOVP1gVvN0kAdV
	 6qoTjMmYR4d0uD+QKQS6vXFRL9vP3+wCEXgcXEqDtJ8H0tqc69lcHlfPViB+Pg9Rh6
	 nG5Y8wM46pfFlBYTOpcueuEz60z2514rjsCt2OhpiBDRiHy+PfRJw2DUGnmZynXi4s
	 C9txwxIB1W9oNStSydgGs47ju8kQbNkPb60uLf+PfmCGuE1HG6MjXYHt9288sIm8U2
	 3T3TcVHTgSy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE97C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367345337.5378.15219808242668076477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29098bb35ffaac356354046a689ebc3c7179f45814ba3d469bd0fcfd53817a0
Date: Tue, 20 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663673453
