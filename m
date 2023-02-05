Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368872772E
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CEDC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675640165;
	bh=/rdNS15S8QJgd9OaF9wU3txG+L3HvYA84M+8j3d05JM=;
	h=To:Subject:From:Date:From;
	b=fN4RGyRVQkrYB/fcsrYwg9j0rPO/p1mZ/axMXptNmqOMZsbXhraTgFphYOciBThHk
	 eP79bhQNt8foeRokJ2h+KtnJWrjR31PL9hxj/32rer1EknCcRDEFm9wKN+fMMl3n4l
	 b/Nhb2VNF3QjBEMpMg5ssos0V91M8tKPiq1ZPMqkuD+GSLIMeKyjWRxKmkcKriAFxa
	 cHfkj9ELq66ClaVzPKeArl137mpSRbwwbOS91pgO907qpPQ+2TWZnAAtSlVP3XpMcQ
	 rEQwwJ4ps5GuvWmTZVI18OI+albFoW8ZdoUf8CQw+EJY6hLNzClVu7lLP/oC8ARg9C
	 +bkbx8tXGcycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC77C636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 23:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167564016574.15588.13089744309699674214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c23f5dd89ff0d3eea5fb4617f9529d1f5e2343987c52b3b3b6e47af9b5d58e
Date: Sun, 05 Feb 2023 23:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675640165
