Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C5314F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C313AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690757528;
	bh=M6KQazBNyUOjFsnRkaJJUcQ/iF1mybcSrRFxHF6VI0M=;
	h=To:Subject:From:Date:From;
	b=ZN/P40R0mf1LZhlij3Ot34KjSNZoByCe4uPmt9RzIvOcPLH+uauRIlq172JSfxdTQ
	 J3AJGEXCaJmA2UWbKt87VEjrSTCO42rM1hlyBSFCw96frwRVsE5uPgfv/Bse+PBFIi
	 q1grnkV+DwMwxBDFTWCxmHj8X7d7zq6Yd8/bZKgrC73z8Iaxhk8/jYX+0OZs7fqOOK
	 AK9snsGW0Ofb0hKKu2SXsrVVeVHrA+TSPDUbCoasuKQ47Ff03/r72sPkM40AnMXnDB
	 9LM/qmXy2e7MweWbuBCPmXrNd/dL0+YsiIU+pO9eudFMNNDYKkp+7e4Z0lvdlNcbih
	 YuaM89XBKqSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A478DEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075752866.18448.430579361785682302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3fb21ef9539884f9d2e8add98a87546cf2c67a407fbc89c389de6b37218e27
Date: Sun, 30 Jul 2023 22:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690757528
