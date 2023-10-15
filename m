Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4461FB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 18:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsAHdQjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56F6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697395028;
	bh=pvHfP4i/FKeaV1wkkDm1TktkDSoKhDVNUKsrpCbC2tg=;
	h=To:Subject:From:Date:From;
	b=hsAHdQjGI4Eorb6dxLlX+1LCFTovCgoJroj08+UxkOz+7YOVdOd6x7PJpqEAzEOCO
	 MB7y92GyumLIVx9lfwnZPe2R2ePRxUeQfBa/t7cCKX4Gv/y/upYIbjxNHpsH3+b5j1
	 Kt0vGbQxJIo+OZJoxXHylTSpcTZBoYeC9yQEZT+rCGZfXh6Mg2QbOn8QzKjKEzC75o
	 NvnQkg7xdvmzgni/0gKhppY62GR3P6QKqG4I8pnFreOr46U505OOecabg9/7oXTl9p
	 tsqF0tMrcy9PE1YuuHdBDEq+mSHwNq4Q0lphBB9IbARdIEmLgJyYr0fXHP1W0a1FlR
	 hB9YQUEHLu2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EDCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169739502868.30368.14524619694639615476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8df996e2e39a736e66ee02e600ffc5cadf41ae08d3ac3c18b18f518350aa549
Date: Sun, 15 Oct 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697395028
