Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D078715AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6F7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672451487;
	bh=VQuHcZWaZuA4A6FskYOq1VUgxyQ/vk0n2kjDNAbnCaE=;
	h=To:Subject:From:Date:From;
	b=tPaPMCQif3mq6t2pTl5mjLxgNNiouJUfvsdNZxMA41LWHJIq/Za03pWL8mB+u2P2G
	 raz1baxBmIYy15AsS7zut0m1mzGIr7kKTSIZhY0/DcrtmRYKSSUpW5A1/9vKOoin/H
	 VONYo+Gpn9XQTJlX7Te+WHAbU3fPLYA15YPvXBSg3JZcTDy8LPi4Oohg8c3SGv5/1I
	 bxF0jxqcbyzJYdSMyykHzWj+JBoyEpGDPVUP5czr7W9CtlpRaSIkMx24MqWjwk+sFO
	 W59P6L2sFX2KIBzf5akIh6uxYT15Fsa4jdFML4Z/9cYIDBAA3aKX+FvP5DIrWGhJ2A
	 pge0oHgjrKPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66044C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245148738.24032.13357158023319564248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1778a6b6c62f370caf77fb6f037364c374b11b69d9fe5ac95ff84bc02e148e22
Date: Sat, 31 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672451487
