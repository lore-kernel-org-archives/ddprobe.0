Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F9410FB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88672C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673779287;
	bh=9bMMDa6pmoVXQEMJO3Z544ppHrS9qin5MzN+rXuf/QU=;
	h=To:Subject:From:Date:From;
	b=g1GIx0c+tWgbC5pY2vI9gdJoj14OHJF17XoRCqg55lXTr/KK4Ms/wEyQNo1bpR/MI
	 sp+5aLpQzRnHA7HykBeL3TXDKV4tVJnwh57HbwFK2oc3LPtBOOpYnkHzBFvkqSf4i0
	 s7B9WJ2F5DH0yXTZS+PaU86uepN+G5dixwa2Li9F3QCpCTFBDwES6rftYQA4KhrXYW
	 57bLHSfMUnnrKBmHIA97Ka4U1Uk/L8RKheoZxcm2kPHYQdwgAVymAe/o+xzsNZAuTi
	 2HXVzvI6RETDv15v3fpYR07CZ5eh//xCVdd/HhNz20ahF93oxNCCxiBsDWUD9vg2Xb
	 YcjCFOt/ZHYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69761C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377928740.7308.13236732875516757839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049ef8fcd77f0217f6758f5f2c69b3f696ed8ad2d892dbb628379cee69f7bcf9
Date: Sun, 15 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673779287
