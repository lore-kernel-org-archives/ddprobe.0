Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67FA3D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684D4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663159853;
	bh=ujQ2KYulWO/UWmHfuzT3PMUwmzK0mXydZDPg8WqXy+Q=;
	h=To:Subject:From:Date:From;
	b=K0v6Y0vylhJGzsWrfMvSBUcBmRv4UAtj3u3YSTzysrUmFcLify7kf65bFUB17nxx/
	 cQOzPcPJk8CkwqdF7+ehhUWKRWB6gRCSzHF9k7235YlfB5Q0yD8P+TZNOZ/9FF3XG3
	 TnaKtvwrdC+LDQCNMneQM005ElQBxAGTQ+5Z++bycZXCFoi0GfTQkJIt5vbxWu9zPF
	 DB1pfSw8GTe9J4SUaDMY84YZ+VmVg/khrvx0VRlinID3LEtN3KcW9sfQTw8cOWcvrj
	 4lYUuw9SHQ5wV3YpjToopPFc+CPdPpYhcFyh5v40ZFGk5D1N8GlMdX2jbQe5lt5z30
	 HLhFXpfIA4Jng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECE6ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315985331.19843.9957240044671205712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a193712dfb0d9ccb9b2a89f4eb3ba5a126f85e64964ac998dce0e7f8f0e8d2c
Date: Wed, 14 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663159853
