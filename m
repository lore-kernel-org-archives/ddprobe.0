Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF16C7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77213C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662950453;
	bh=pDkitAbAMKR21hTgRFpY137yzZeIaVoiJ5qtheXcIug=;
	h=To:Subject:From:Date:From;
	b=WDKyHD2Nf2z3hbvBwmDlN5nekCqhXxiAu1NVplloOGimC98N35QNbqVicXhK+HDUO
	 GcA7+G576Lr4H7FLDkop2Crv/rIoZfs+eewfq1o6uTzP4//BnHhxxzGDuC7k4CMzWE
	 aMgGkGbDHVDavQ0tzNXCEIPps+GDA4ZCpUY2un+vkOZQ7KV25Dd+q+b+rn+hbfToNW
	 Jdlupl2Br5OtkYn3MoRcB/cr9BX6GXE4zRBrHAskNuC/DvNDWInfa56mdc3xE5ncZD
	 KXEwyZ4hQtc1kYjfFWBvJlKpqlzyoET281g+OrFDNQhQ1UL/x/HXV/qQp5AetPH0vj
	 cKTN0r/oymRRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AC1ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295045333.26948.7849162131689017908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dbc2dacd54a83f52dd5d97b948ca6f3ab31c1aaa5d80b1f84eae5d8f3018a7
Date: Mon, 12 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662950453
