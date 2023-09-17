Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720ACEA2
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DE8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694917508;
	bh=BqXuzD5r0e216z2eQHntNJnHGfGSpIZ+/sPwwyLez58=;
	h=To:Subject:From:Date:From;
	b=PJV6YKrNGXyMJwUZJZZcyDViLJuP+hmoxewEpl6Kdc7m7k0/2BCXdzv7Q9bNuDskI
	 +1ANwOPIhL20uJRfNo7dPCwhnvqpMVtGOQvrI7bCYbfmpQqVf+6+ZnokYKuKcD503r
	 7QTySCBbdTmqMlq7L5xog5fTrvWsVeboYdQg6QfCPYv0gTKogZkZwk//+RwqF2EH60
	 YQvA9AszPvObG+Mv8UZk2Fy8YyBDLW3ZSt7emd1C4pwm8XYKlRShBh75lFuRA96WLo
	 AVMnlz7pAZz9CHBrzLEF2FPZe9GLUeDzgGS/Rt3VmCzoyj8TZoulieHg3nnBgnM8ET
	 c6/yQmMwuTsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D3C2BA1B
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169491750867.5018.10076492336482570041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b259c432f153e4fd129644251934cbbfb54d0b3705326e4823975c2195fe6a
Date: Sun, 17 Sep 2023 02:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694917508
