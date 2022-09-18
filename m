Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F821375
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E6DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663515653;
	bh=N7YMzqGKgL2AVe+/NdDbmNTqS6qbw4f7Pw6Ml5t3duA=;
	h=To:Subject:From:Date:From;
	b=BRJi1kK1mRDlnwgLleH7OqJQ1ZGVreVvKDgeuTlSfmbf7ranw30ITx5Oic6wTrmq6
	 qUo9IxpQlTVGYdJrEu6X7OVSpkSE5DBDJyiZLkfMcSMC2LwNKDOyPZg1ZhoCvH/ruZ
	 iNUEahCufbdg/lNlrSKoUjtg7RNRzMcsfhCKAvUGuswRnndg0BD0sE0Mn+4WYuIkbp
	 b0ZGp8pXJpacJFYSkBcBA53oTBlTf/WrvEd6ZtOdLpMp8lE+PCsb5Xv/2103Eb5352
	 eQVZ4nFwPmmVLiy3YLvmAzIFoEm/nSWTA891J/kbGWJPvZHs3tK4470ErM5nCt8lhd
	 CCLK8AWA7eXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52774C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351565333.7596.10793437823889981037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e1fc4d8330d7614ce60f7b1e1e26ef8ea7855b5f7995dba2dab02b8f6c3f90
Date: Sun, 18 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663515653
