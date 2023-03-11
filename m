Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C157B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE9FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678524905;
	bh=EBU5FR8MVrVIPRP0UY1O1UwglkzGVAC8ngrBcDerBvQ=;
	h=To:Subject:From:Date:From;
	b=qnENS1MMaQXs39QGC2cZFi2jcTgqAAhCfh3NfxXpMXuWLBic/syJc/hmu/55hlkXc
	 UTj+j1PO5C72A/Tpo6Gk53eN8OsdRYno+G7n9cW+bc1CH6F+2AbIFOdZLeyfk6grlY
	 dhR9ErgYrviRuWGMJUNhdQxFgaJYcL+oEy1W1++W9TYPhNH2AAQPioDs9qERIx534Q
	 SNpYUncTt0OiF4PPLNdn7UVUf9MWH8SPp3ewM5uunv9KzORzPnboZ1Vrm27MQ2B4Hb
	 1UutxN6c35grRocXf14pD6mmdMvXR2fJcQ1VkI+cWK+zSAHtbUMwWWiRyqZYJjs0lk
	 /UXkGQwnYe+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CE4C74A44
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167852490579.11019.2924722862358537670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711503d5f962189152fa2c8ec157a2b1e05e75855222350632718e5bb94e6d52
Date: Sat, 11 Mar 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678524905
