Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA78EBE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDFDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686570785;
	bh=rc/EDgR9cd32qQaisr7vFqcW3ornY1LB9DOoLvDLpfk=;
	h=To:Subject:From:Date:From;
	b=TkMlEjAgIC3DB3AHxqYl9acAEYUQk8JbxacfcNdSIBt+vhXRFYOslk0OxbBLvGFoQ
	 ojbUx1MaefjEzJDUqI0Na311vhn8hPoatGc0jMXEXpHu+vBrfQzAJ3BMC9bhPd8GkT
	 uX82Or6UqFmtf3m6BlgZKJoqAXzMyAiMrU68iwkINcxu3q6H3Uhlgb3sZTT5yqCvEL
	 5TLvdIYBxj5W1wl6HYSEGE1Ym7fCuStfOOI+W62rsuibQAnk5oQ/yetg3nQDiWu2A+
	 eWQ175pe9weuBelsx9fesPV9ZiTnkIzt/yojiLPqI7rEuRop1675LQcZJAGSXLVkdA
	 12fmb2OF5hQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1D0C7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657078576.20450.3653241159662743662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb65898e1eadb36e52cc843787c4760e122087a24a9b8a27ba99165b30e8bd5
Date: Mon, 12 Jun 2023 11:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686570785
