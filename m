Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64C3FFF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3FEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686817748;
	bh=ZJzPRKwPcw5Ux0RR5J0UneBNw3J/e1IjnCbLw3CukTA=;
	h=To:Subject:From:Date:From;
	b=BHL5aACQgE+zXC96usgQ3FlAg124SPnOC0SOSANFp4w3oeYiUqfKDA0nrV+RpjCyq
	 OsUlyi32BpfO44t7wMnBT2vlygXNF5K3xETpMVMFyVtZgl0dEo2MudFWRUIyfl26Sv
	 U9j0e2VsN7VweXb9daCiLCaCj23v17iYsln5YDyP/izpsCP2rqjJTt+N+W8uNvBLkD
	 kuvUdZ0aMJcivHCpNnYF5qbOwvFIMBbhc9aLOHcW7H9MIYnk7biO/Wos+HXC7RUDuG
	 9RPCe7qqyVO0Qo97aQh/1whSF+Tz17oAwLd7e0iiSfz+qvN8OmkQQYnPPJXA11Lgjx
	 OluR+wkHFvpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FB6EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681774874.9912.16692030667425346741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50594ff0c958ab70327734955009d0993f1a27d592692c7687c4ca2eb2b20f47
Date: Thu, 15 Jun 2023 08:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686817748
