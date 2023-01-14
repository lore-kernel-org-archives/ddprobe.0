Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACA663D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D85FC433F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673709687;
	bh=1iWRlr+GiE6dv9dGYRV/tjqUjIdpYuiRWMnJh6M7wPg=;
	h=To:Subject:From:Date:From;
	b=Dc84flta1KQVRt441uEAy2dTWjdlvT1ZIp1YN8MuoB/FLH4LhJNZGEiEC80AFi57Q
	 BjvXc0l5qkGmpy1QmGCndLnCNRmaXqms64uKhsgXtRMwyMiClAWWJJbhWhARHycQ74
	 wQ1qOxxke2rLBvkKJrxUWDZPj5AAzqMrJHdgB1ukPisRCV4SQtQJnJHPUz5TcMSeRM
	 KJnOV9IXkO4/IG0+JubvY9GiZr6szDFXnj7nTO6x6adZuIAXrR1Z3+nopQJiUWyVOC
	 Zum8RN5iV5BH3QAjgD5lN3RlKMDDoN3soK7oG56RewfbJluxqSeKlM4UF4IxWboDIp
	 7HWN5TBqpuM7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62677C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370968739.19329.6249655776393144954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f7d459f48e6da8ae8dc91ed4a012c599e10b7faadae3fe80c7e50c1c176af5
Date: Sat, 14 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673709687
