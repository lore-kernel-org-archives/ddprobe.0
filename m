Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3423617DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD64C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679630405;
	bh=7BjPbAO+4tupgmoSQD7ElmLcoKWMQznLMRV+OH80Mpk=;
	h=To:Subject:From:Date:From;
	b=RrXK45uNrvtueG/ECgw0en4Z/ipT3HwAEs7y7xCT3wHmVqK+u1oNBEmYDFMigeMAO
	 t/sFUquxvSVLgXm1r9GcUu+oSJZRu7/rUZF+EJm1wKZota8uKW06LuodC7iXmWye7m
	 XmgXRjrGGtO4CLGYaHGb7qmZ+zL1AnuyuM+1mGECJntBqjQTpwvzFYVGi1WnFNw77C
	 Efch2QdCvyJrWy/quWYdrqXajUadY4jl9qJWSoNu81EEhKy1eLvXcKC6qPVjIb/uxw
	 cgxBgOV3hEJEffnv0IwmfhDEot2uugVr54D/idCxpaxLK0dJvcvg8w51htxmIe4YYN
	 cvdHRwJVcpwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBB3C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963040575.22295.8483165492503600751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d64c074564d395587d7f7edd8f889a06246c12a7383d13af94ba48d89bf272
Date: Fri, 24 Mar 2023 04:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679630405
