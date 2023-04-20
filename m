Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A33D210B
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 05:16:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC32C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681967766;
	bh=q6lnOUM9Qnv+y/A4bZ9rG9rwElZOReIUDY8RxVwpJxE=;
	h=To:Subject:From:Date:From;
	b=Or1WbFd3J9T4jMUTLUhTtRV8e9P/yphrOJoVIOUWnBfxMIPCIMS+eWlZCcbH82saQ
	 ltjZAkMD2hEFc0M8mhGX/l4/LBMjrMWH3P/jyb/YS0ihwg35k26dEiWBHR5Tzw2L+n
	 H1OpjpL5vL2mZQ1dBLH4dsGcdq177cKT84aC7ZK9G940G7C4UnaN8P5f8dvJ2RV8wW
	 1RoxBBzO6XdmcEih8j3y7X1Jz+Q1ymApKjoQj0FRFQoJWIqxHwv8BdsjE2ck0KUjWJ
	 JlwUJL5JlE2B7a5eNIxfbUDKrdl/5Nne/E0Y9F+yUs/a3VVIBpoeyyeVGekc5tHypm
	 MhkkGt5iKdzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2F2C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168196776576.20672.1052257974353886993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4521710557a8e20e4cb0df09d8386517513080011bed9c585b5b1cb03775b5
Date: Thu, 20 Apr 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681967765
