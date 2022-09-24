Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15A37F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A9CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664002253;
	bh=dE1NMi3Cdt8cmAz8CK7dag6XP6pPvgTFFMeqDKZ0z/c=;
	h=To:Subject:From:Date:From;
	b=M+ugq4hi5DIGUshJsbkXNlvNtoTMxMmSuJuu6r3u28nVWE5Kl5HtWfjZ8cXzUqgTX
	 M6nio10EZIZ3x++POCU/aQx5MESMJtqC3x7f+KBz1iiZjunY0NoPssTfwCLapv4xvQ
	 tX2BnCS7HbheA1RqOWUq229pC0UfCfENlRsiTHOPAJUUQqr/l1AC+CRxFi1360G+Dm
	 ocYxSEsPeVEJH23Y9GORqmuVUU11cV9QyiObd/zheINgLUgFeRp3rDF3DWfM6N/kgg
	 Y+A7eIyf9bcQdIZTzo85SO1Mj0KC90XXmn0BVG0fraThMnjDcMltx2ot57BIR3slXR
	 Y/gmKnsquVOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8C5C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400225334.30642.9355097602758741809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff24307f46a65cf1d110c46d2f19119073081052925a382ad057789ce1522d3e
Date: Sat, 24 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664002253
