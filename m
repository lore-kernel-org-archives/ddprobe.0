Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB475385
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96F8C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688752028;
	bh=auGKc+PZpbRLW0VzOzVeL0ZdOidQCMEEMD0aWZINRN0=;
	h=To:Subject:From:Date:From;
	b=MQi/oHt86B3pZ4zAo3er6perl84fp3tKu/6DqgupXF92/CoOY8gCuwHbVanUfgT33
	 aFUABJWRvLWc66He/zTe8oHAwm4Ig+oyHeXxflGwzAfUZlXu1X1SoDSmW0qB6IA5wj
	 lyrCfXDWIS/jsMcMm2pg1YiMXKJ1CC81CvMMY7wEWR2kAaDYV5EXspxKd1y/efBJTQ
	 izbbGRsA0+vORDpjcvndUwlznSjbLqXQjkrXGndJkxtYNt8SiT7GTiNIY2s+Ib0Jyw
	 Tek9RfUhJbeDTwLKOmfSzrsIIkzg18NN37LXsOQ4uzskc8hmrbDXbeOuTERSlrN0gq
	 JAOXqX69e505g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EDDEB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875202867.4621.5286153850027379563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38db91064d53d8029dae33e01ea8d561812c078fdd8f69d3ad04b88a3ce17446
Date: Fri, 07 Jul 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688752028
