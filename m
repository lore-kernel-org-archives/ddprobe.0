Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D672023B1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA42C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669123854;
	bh=ORD0W9nTvYWQ4I82/bOnooQhG/VvE+gbeMFqoGWpLuA=;
	h=To:Subject:From:Date:From;
	b=ICqFqy8vi/nCHW29+cHpvJcfR+L2fBj+hqKwq66L6oFGd8eeobZcmOm3TrRS92Fh0
	 B2TCjlloZM+cEYi0igBdPFkWs869dvBBZP4/S91/bjkLP0g2ym8C/Tv95vq3wqJNXl
	 Y9rx8XdC5Hyuv4JZrON/AB/Oz1qL0MXb5NpG5NX00jDBT8ThXrgbgOiJfDWt5t4VLu
	 mHVefCr1a2XZ4dNKvsIilbOn0OVec2pwYyHKEfU45mi6vTkpvf3OGKRMlaBK69FPOf
	 pHt+cKe5jBjoGIOeZojjHsuJgtRhkgj4vN55HXS3fivi+HicpfqkmxNsBGrlz1RUQU
	 N1WaQFt8yz0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59489C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912385435.1190.15108425627223348934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9575f90c5576092d0674b2b249cc1f8a4bddefcbadb42f5a9293b1e5f25e7424
Date: Tue, 22 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669123854
