Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF50323A0
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB62C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663827653;
	bh=37Qw+D+BgdEucxX7IUuTUh2Mq+PylzET6Uwyz7CltpM=;
	h=To:Subject:From:Date:From;
	b=bwjwBpztmNKIyDpnp08Wb48wgz4TOzaGxalvISEce0XVyVeLltowzsna7pcxPChEt
	 G6aKyKui6AmxJ7Zj8WmgWTFCSJpqoXwgmJJxteEGgVmV68gUh23hMIy24U66tGi3DZ
	 d104bbfKWrxyqDDsPiCglLKdJFSZSTxeeRkJBmqIVU/zj3L6pNgdjqkRF2iVgMyK3Y
	 wEVjnc6vRpgopt0sumchx623pDJlQeTHWjjRm14I1Sl4eZuAYUHsjHRB7/mF5OYZj7
	 MAnQTtARV6vZleEV2YOhUoyYmU/q0El/ZxRE+BooXn5yOwS6lWhH65WlmCJ5qv/W5W
	 f0hZvnxYX+w2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DB2C6FA90
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382765333.26577.7671901273210300068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a0c70129c3b5007ea3c31eee33677e3e85d819a4809db85178e29f81024ff7
Date: Thu, 22 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663827653
