Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6DE6120
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C80C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662676853;
	bh=wL/3yqg0fJM74tH+0m1yThUt9Eoi/coAVgBkuk7oSug=;
	h=To:Subject:From:Date:From;
	b=fU9rxfa7nUloGAs2Rhq1L4EU2a+ABCZIBphkZc3ROsXgl64yD+cniSGRcv3UQ7xpA
	 WR9srlrKRX5ccivm6bAQU+eGLgDp0FxIdkD8DfD6XcI2MNSKbZNf+s+9fhrk4CmWNY
	 C52eHzgPhr17RLIrvDrART+ogvVkowb8eLtcbrfyary4SLZ+Dhl/C83sJekrxb8x6Y
	 REg4jrtOiO12loFmBSj38lA8XRBTNIyqIgamSP5ySiElKJ2nVHtbDlkl3v73TJLt27
	 ziA6Wpf1wODUTtNALSVdpnSlLNDPyX2qhRanqrp2uWuwTzTz4pl6IVSah+b8ztHRG1
	 pxri2JOJEb4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59837C6FA82
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267685335.25208.173694203906894819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13029d222c303fc360ea092721fd695eeb0d24280dac86176c4c53d6b90d8608
Date: Thu, 08 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662676853
