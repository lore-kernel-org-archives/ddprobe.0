Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EAC46B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78218C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664300453;
	bh=R9vZfvYOQEiGQ7igJYiVFN3WrzlniqNFkA27HT7J41E=;
	h=To:Subject:From:Date:From;
	b=KY/H5/+rlAbt+ItbRcMEQoy8czdmwOTag86rpkYAr/Fryi8ivcHc3F61ii6YibeqV
	 JG1MjZU3AXaUETHLLHdxZl8pk0kPORFk0s41s503mg9lURQz5o3A3Tm7R+pdg+3+uk
	 tXFIl2AWDnNzwD1sHYiATEs8uSWtNQ18+Be5wKCZ+02y3EBr3oPbISzrDZlayzqfuy
	 1hRxVtrNGZo5RzDAgzGMOyhYi/5xCIpEYSfpvMdrmjO1bYPaREvsZqrNf5u0uOrGoc
	 dYfZY4VNM4c4dbvE7vP3dK3sbDLgXWokKDL8vmAyhLANSqhqrCGQ6QlaVufX6c+FbU
	 t9iuhcPXIOC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F394C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430045331.4854.8838607396769960162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6b334f5fde74559987b93b56a0401309c666a71a807b0c3484efbe553ed60d
Date: Tue, 27 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664300453
