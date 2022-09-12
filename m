Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD49E7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D37AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662972653;
	bh=BAcXGXYrWwm9p4DXEXcwdNGwDqixiiHkuGmoIxJIBIM=;
	h=To:Subject:From:Date:From;
	b=Ga+Orza6eaKWOWklR0cOaESDlBrsdRC4nDaNAB8jwIcY7kdtcMV1IVUHNkJ86GceO
	 LWmbNXk1Xf+eaDlYMQTbwCaVotcmrSvXzNhBQ4WBNUQQDwC9C4ttHnrkkvrx9Nw77X
	 +ohYBkrj6c6S/RW3fRb9tzcrTA3tqFSKDtsVi9mGOPOnl/yECh8w/59lgurwDBvkIk
	 4Y2fxwFEMSSt1ORK4nHY36158AHxi5/RKqqWQ+HXKXUC/Vd/tUED7BJlQWFdw8syWs
	 o38Iof4mUBcCX07BkhYod6pzNb7Ny6bZUNzg5/YAl+ShwAxJdgxi9s6qpNdI785cuQ
	 lcr85Cy1cgE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DA3ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297265333.3198.5351271142346254186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf52d222d8231f1cca34d149ee9d113ffceef942f2388702bdaca68535cbc4e
Date: Mon, 12 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662972653
