Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802511FBC
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD92C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694333048;
	bh=PT+uTqHAvlM6/dmCFLcUXa2mIIftS4TjOEihxH6h3Wg=;
	h=To:Subject:From:Date:From;
	b=Ot0auv1+hedLxPfLLm5D05NVg2VTIx6MRY5U3y5v6191cLbuhU+21V/qED81A+6oz
	 mZTdN6aUwZ7bxEDrBiv37MaZAVBt5T0qaRY1cdXLNmPeflc/hbfJRz/aRciCMfMP/g
	 t9l0ffEablzzFncmPlAkjWKuyXIK9zvPnxAI2M9VyRUaI8iOMpacYfqfGQJ039aETQ
	 nf3JPpjrnioRfUvlaU+1U4SqX743ZKl0bn6GRWGx+n9Nqg7tEtXFirhqM+qqEmjW8m
	 FZZ9anCFkgcowep5WSuEEiVZD4cFlFP24LmDbtluTRXgnBBZZ9q9y2O+F7brboMOV8
	 /ybEMVgDPXzWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85E1EC8748
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169433304872.9262.4446416139216781692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b19772c41b0cc8ccc2214ae9afd7c64145af5f5cd9f8fa7be165705c51327b9
Date: Sun, 10 Sep 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694333048
