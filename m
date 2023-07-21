Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B59A182
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C91C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689898928;
	bh=4oZrjmYa/cW56uryqcUxbKqmjMQqp6X2gilR9KtDMho=;
	h=To:Subject:From:Date:From;
	b=gCrSD1bugZsxVEVvFx8tTztJiDUhcqnUT72CEy2qzHtuNI8b6m1kpJ4o6wq/Hp2Wh
	 JINy07kXkqUzZYiAXeG8TnfIfC+zvJal+Md0XUioo3GCmaDDbczJ3rhmq7x39CcPYD
	 Wsu8+MJYalYxA5m8QawMos/cgPKr+hEx/PP3q8Pv6q7QRQEC4qafNGeIbqeyoGt3Ea
	 mKdfLj4lvBTioCtF8FoXKun3k/TxYsqLJSSWQAGzymFF55YipYA6LIfDprpVawg1mR
	 +VNWpnrOvt7ISGOg4ZkZGNhyCvM6aNO1dOyXqynxGVpqbrAvofjBKCUCKJSCirxk/U
	 NB6bqUi/Z6axQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5533EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989892873.28201.15308529091432348481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2e498967426134e19ca871b8294ba60abcffee706e731ddd2fee083a8a7a80
Date: Fri, 21 Jul 2023 00:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689898928
