Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78877B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B63BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666323653;
	bh=WsXqGR6oa1zCZoZAeW3j+Mx5BILhdFi7wkN6dq6bM5w=;
	h=To:Subject:From:Date:From;
	b=PKifZjwUWqodGHIW+5Z/6PHJw0C+L7DjuBxgGtcXSpP+B5BvQhS1PJq1t7eVqOV5n
	 KyUbqzkLU051FH0irEAIweALMPyDW+lNA+WH5f/nAK7qz3/Fm1EtP/D8Qz43laHqie
	 YqYbP2zUQ6x2uSGmqB6CvRx5s8nb2gZ/UjcOht131dqqM8/zN9RVDg0RmKRLr99wfw
	 HOiVr06xYf83mj4lJJ6oSCVXSK0cDFuLBGt6/TFSrdVm6FPLWCBjTkc+6rmbhpwXh/
	 ve0zV496SEEeBhZ1aWzl44RxFicft+Qw+A88i67vtav8Pi4PHZVl+mLyprgKk0N7Kn
	 7HRzMlq1eHbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502DFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632365332.2785.10111104463994831141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff13eda337433414ee7ec41fb20ce870382b2e362d82d3e1f618c8070c40b9ac
Date: Fri, 21 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666323653
