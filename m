Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2860363C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExLy2boa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E836C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698910696;
	bh=zwtPe135D8O3LMM0QIHgsC6HfVL18P9RGW35ge4i75M=;
	h=To:Subject:From:Date:From;
	b=ExLy2boavzff4iX6oEnr8GpDjLz+laRV/TsdzIOt8/tn7WOgk7YcjP4mFr3Ldy0G3
	 9FsYtsbWPUnDaybK+34luwTyYuHSAV8EVgJ6sGKEbg0xIyn/Md+RE/93ocaIRX3Ftz
	 OkkxAgdeUpNsMWG0bjgV3IZOBmZik6QkAWekXn44vpP5XhktDpY9TXAqlc9uFOby0x
	 i1pQ8LDEOTZyWD8nN4s5xAepmULnqxXhUrfkNpTmqo2Q5qRXRLuyInzEM/D3smOnh6
	 Xcg7p66pM2t6cKJZt42cpxc2LSBRqc5ApE0tmGtr8upHKRj+GBuuFONy6ERrE+Z3+n
	 2WWdyTAEuVhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F831C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169891069644.5675.7903399713510460947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6ca0d0da04d04b6d8ce040c03ba4b70ba46a1e0f6606b08f2d66f812115579
Date: Thu, 02 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698910696
