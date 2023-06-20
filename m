Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DDB1FA1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687265528;
	bh=zd9Q1p2U15rEY+jCb8K/000Bf2p8sbKlPPnPx0LyMIU=;
	h=To:Subject:From:Date:From;
	b=azJk/cJiJi23GtKP2ZY3MKFv7Q/0jzbRP0KXSlgf9CbrkGGV+hqCNoJhiljo1VtUc
	 jgXSmIQkhUyViqIalfbV4/imLPn2iteInEG2JokBwEc3CReDLMxCx0+ygDridODO8u
	 KG5Qp6TZ8xXjYUZ2l/GR7lgd/JbElFIkhr/w5lqJNoxB/Tf/QO3YooD+WPg0cfW3ZI
	 JnSxRGWsrhrxXY8Mfuvb7yYHqnHi2V2/x1qzFWurRv3IPEe0t4Ak34faAKX4waBvQ7
	 tYtNW6Il5AWTrzTa14Bg2uPqt4RXr5cNPHSXR+aYrZ1c1vq/mNexwEp0wqO4Ormdai
	 DkqNv2qe3OHEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3297EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726552866.8513.14776510515502978090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2badba97877acecb5011d1ad8ee74d568cce5f2db1a1247989c68a1367a6833
Date: Tue, 20 Jun 2023 12:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687265528
