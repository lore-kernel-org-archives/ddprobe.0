Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20EA36B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86213C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673577087;
	bh=NHKHmcu2+1Zsc0w7ktpOkPMpmuRUSYHbj9GQF6EFquM=;
	h=To:Subject:From:Date:From;
	b=C50bZ/8zfRK5AXwb2pZQ6wfz6PGV40b3ia4J6VivDiZS/8g0W7Z8hWyAaJIWN2GLV
	 qbAOauxmpewG6LpMqCAQj3iyIUntO3QGf0kHF52xCmljtmmZh7wKMnOzgc7LONC3DV
	 Kwn5nGPL8eakRvtR9E/XyHl6XEA8JKAtykdQWPzAGycJSQ1iPv7p3SShjp9kMhQ5bv
	 yEgYOuGd4mFi2bxzSFKBBkoRIjhh7c45dYyziG1AS/bMRsDxsJ4OJG8iSH3VLFRFl2
	 sRm91VfGYZXoHw4rqbh0+Y14HnjhFYg2s/x4VRfkwIreeSQmgzxXiRueWxjta2g1Zu
	 bq1F/PbPQNG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CC8C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357708741.23493.8205664215839664272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d072100b5964bfedb44b94c11cbf7aed9a7531e3c40e5bd5599a794b406a380
Date: Fri, 13 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673577087
