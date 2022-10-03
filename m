Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D6115BC
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C59AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664766653;
	bh=/aRVs2UYD+Yi36PX7bndLj+bRjtHGXmveu0Vo/2VAV4=;
	h=To:Subject:From:Date:From;
	b=iSMGSQ+j30SKdHE6bE+GOmibsUttx96D9ypkCmvGTQHOnV/e0z1I9KWNTHuZdq/ni
	 Ungxn2TPh5qgDzEs0Q0RoyI0qK75WwNblsGUIAYIpnVX1V/9/q0PU/GvbVe6WQnBvY
	 h/WqPqOIc+uYq3kw8arGaeWNmLE6uoiRQnLt5Iysi0g4T25DyJRcNhWv/exlTKziXK
	 fU5w9FI34IebfyTFQBbGZj1r3NViCiUVtmwUEhH/lXwBdHqMioLfw9JMNbR7So/Bus
	 g3Tij+xkxSoxm+USu88CiIE977itNekvAUs55PYCi6sfs8rtkZv7mndPaa2mdWu9ik
	 JCvUpTnMZcTjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF28C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476665333.28830.10183278362562671445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15515b54debb2e5b6a0b6b0ba414304e384d70c0181ac86cc8e70532a85619aa
Date: Mon, 03 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664766653
