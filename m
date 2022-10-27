Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D421C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA62C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666896054;
	bh=B/Jyzj517V9C06fBSDur07GnCMT5MddanVAv49hwwoU=;
	h=To:Subject:From:Date:From;
	b=JnIDX7VOi9molgcPMp3L2IWPm8+l2RdaU80z6wxrdC1lQAS7dWE/It1/Uu7KA0Pxu
	 i3kzxgNgH5Cc7QOwI4ZpB85nMYkmcmwCv9z77Q5MEr9iE3YbxtgjPpVv1Rmoqjc3CK
	 uBRjb/SlXEWiFcRiCFMM7cBKyUOFit2npyiwEC8r6XQ1ROmugH5pN3MQa+tGYI8vHs
	 Adz7pnmLmwG+bHbeFudlOb0lxDGptBJ6W//n0zVGd2anXvv+WXuH0tRep79VR1i09S
	 ilOsl7IHLUjsPzowGegmdwO0t9tr08rr2KZLtdDOdYbUxcoUurwOXQrOSDIETY2lNl
	 fcKcKR2E05XBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56582ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689605434.28380.7914044180426781522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef529522ccc6f8f2a2d206072a9d87f72fbd2b64eaecf1ae96eeaa781e2c6f1
Date: Thu, 27 Oct 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666896054
