Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B77C141
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70EAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685747285;
	bh=nwKdjBag7MP0L6JpwIiVx140b14CsggZtZ8DwP1hkTU=;
	h=To:Subject:From:Date:From;
	b=L1quSRLs+x5pCSZw7eNB+524t+uXBSQJ6lPJCyJz9bvten1meco2WS3AQNpx5wf13
	 dBXtgBtqjnobFr1CjLxp7/iEzHtaSWSeJgw+Js8gXPO/h073aiLRcVWd01I9UC8gq2
	 t5z1sPiIJjMixPI8JQ4eO3vAt3rIJX/yX7T7ANfvLW/AqP6vOtV4JNe4/9N2F0iBEb
	 nnfPPZ69k0C/HuA38lSAS7vR294TbBaXLjbDEOOBx5lMcb/POWZTuQjWIKIWGFxOI6
	 C7yo5WQidVjd/H8a/k5Z2uLU/h649t9sMlEJwCwO4MDIz3WkFUsp9TcAc+TzRfVXqT
	 x6RL6v2pUo2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA448C7EE2C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 23:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574728582.31101.489127766747177721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccdab18c9217882381438088ce5ec88d90e25e49c4c39204af51697328dffe4
Date: Fri, 02 Jun 2023 23:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685747285
