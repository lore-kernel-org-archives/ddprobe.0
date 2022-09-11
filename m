Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89417F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6505CC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662939653;
	bh=GX1PQl7ISVFjm0v1ZHQWMaTTtVCYQxJ4AX+QnrhpXgI=;
	h=To:Subject:From:Date:From;
	b=BGCaeraVkp63tIMC+IR4CRKLgdrRsSGe+1JrqOeqXaYS29qIP07zUE0RCVafuTuWo
	 LOhuFezSIhJ74GJcDOv+2B0zSw5ABWZ3u3EyyFO0Iiq50LvUDp5rXfxEn0VxJzI2ma
	 RXKnGFuvuutxDce5Cp9YcRzmAP7Mwzx9e6Ap59t07fDrwkKKjTnsTxnY44uexeemzN
	 E6gykBRyovx2rc/0tcmCg22ECceQmzNN89Hb0am5svrT98bWLrSQPv4zaxDgRAgA+T
	 EksrpazROKAINLI+JITsoNKN0b5jce7trZls1SFGI8RjEOxDvndoNNsWqAJX3oVZW4
	 pWDAMr0KMsWNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50367C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293965332.15191.5895672447154546538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dca14fb7bf19f50f92751c5399ece65b5524f53a89f206056719cd683dd3bd
Date: Sun, 11 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662939653
