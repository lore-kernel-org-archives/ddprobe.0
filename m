Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475EAA927
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 09:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB890C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 09:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689587468;
	bh=zrmr8V+Jaa0Wk0xOkNxDC7RjN4Ak9S1Bii384Q8f3M4=;
	h=To:Subject:From:Date:From;
	b=ArxhqgnXEGG9Q1xrcCnFpcvwd6H9FLwGhaupn9d1nmaOfZeUKAtsLshx+vGilIOyx
	 qcpSclmm9WENJtk1rHST8Nqs6RDD5SAylVtf1nQR3iok4eS+SoUidn+qos033OU5bK
	 Dgjkv4i3CK49R5XtuYpEOIvteRsQ0cwKkZmMtpXsYKZuRLGIvdFQTkgLJrXWPX/cMZ
	 hVfJb964AxV+e2O7GwFFpXiLAfE9w1C1YhueWGzhl5HN+VLFuoU2TUSJB7C9V14acQ
	 mPyPbHlo1iu+LCQ6CwYGz3nNBVzGE6+PbMHFBXWFDxwXxMmmVNg13mxx19BwPfdcdz
	 rhujmYe9qbq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1EEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 09:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168958746870.27344.11055361302915575804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72dc803426cf415dfaeea13db23f291844eecd5cd2f35efee0053824cc92eac2
Date: Mon, 17 Jul 2023 09:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689587468
