Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F51A168DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEA3C433C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688148188;
	bh=qY8/YEm4RmGLeaUtB2mmmPzt+2z2K56p2sId2axTK8U=;
	h=To:Subject:From:Date:From;
	b=h4T0tIGA4GF29fn63BYHl/0P9ffb+PGJ/ZM9zv6upFRDp5uU9EtN/brMPkwdir6tH
	 4Noapz6/93FI6Taq6ye9TIahPAupqwKKqHMeEUAha3sJOLG+ba+tCs9+DkcTAPfPSR
	 YDhOHCBMBJp6+9JxZoCSrFA3Jqe0KarB5ezGe+1lKjFfqR9EYG3pJBLGACh/UbF99e
	 BYdWr63yLZ/4oOxCLGmwFgx0k7PazzS9LdRbBa2dkDtB/0Z93na0Ni+iASidQRBc6I
	 o7JcGrMwIR1rkqR6q489ezhTfnWlH9C4lRQlwo1v/IcGtIlM+RcDUzentCDXis/pWZ
	 6VOqyagekgOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87DEEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814818874.20844.15506751230895082489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1f41d3e43182e320f578249c8197d1c9e7616bfbbfb20ab6065c33deb7947c
Date: Fri, 30 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688148188
