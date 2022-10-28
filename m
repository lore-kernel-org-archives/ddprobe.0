Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C92563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE0DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666963254;
	bh=Za6CLlbuFm9Xty+xA0ob17cA1AsyaFhuHt2yuDTHKa0=;
	h=To:Subject:From:Date:From;
	b=Ybp4WRrq2QJHZ/fJPCcf85TV2fNH0okgTS+2e+JMtmkIKXOCbwYvw/elz/um9p5DP
	 u4PvZo3VTU529bBkMMhY/2gDKMilXLjDDhRAjg2y3Fn6X3lhDEcaJgCgzJHz1n0UWJ
	 N84Xet4X6OBegSmxXzE69TR7mJAZaVR9R6g/lN8Bu00/ExsxBJrn1lYWcGvW0Ca4nw
	 49EObqNRD3rJ5QcOjW06YBcOQQ14GjSFuQGvjzA9Ea3foDafHqGzF/pFVWG9R7PdhZ
	 FWS6jofvTGVASRh4lIWcxKexzKGo0ORcYBOMZg3l27YcJafa5bqlydEfu7/GT+yoii
	 PRkg11jEVTS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BBCECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696325435.30392.6786337674256849309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cf89d6ae6f7026fd5ff0c31996163eeae744bf5de3fc7389526bd4793bfd8d
Date: Fri, 28 Oct 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666963254
