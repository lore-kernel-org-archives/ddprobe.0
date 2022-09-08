Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11617C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686B8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662606053;
	bh=oxTbbYwmps8bD4wcGjPk+KNLCCY17ZqvawUmZUwI5TM=;
	h=To:Subject:From:Date:From;
	b=XWFslejcu4w8KxTUr6YQdlMNHQAw5ZNXHjwlIRH83NPZoP+5n2dL+Od2M8Sc54rf8
	 mQi8c4oZZZW/US4xvDvvIKnpuZ6w6SX0j0SIk2k7cYA33F8A+Gl2fWqnoai33nC6qA
	 hQ875CzP7EhdL3tptxFyYq86PTyUV89UIE6W+p80USGYCjNoX1QWDU/WyWbRw6KBtM
	 T1t1Q2i0SEhLzeOpQMhWiACpI1JqIZnG4KPf8UI+Spp8+BEHZKngiQtcXNb7wAsfBm
	 38vZz/HAfRkS/zoglAARYU2XZnftHyHEm5vFeztiQMRQESjKt+pYXBSCMOcE8kaVFk
	 GwcehnHFyROUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54618C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260605333.10484.12401317956876115832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754bc3d4844b150026b244f605a45d9994b7905643ddf4ef12277db0c67ddf6c
Date: Thu, 08 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662606053
