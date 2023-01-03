Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C905A8F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4E3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672774887;
	bh=xYkj0/U4DX7DTfy5tGHAoxbobTtX+OUFph7A1Yh2NzM=;
	h=To:Subject:From:Date:From;
	b=DUCKY5Mgf0N3kDbGwRQcJDkBSB80ZML5QZJfHSZgdVkKuWVmBpBAx9tnSNM1DOZ1A
	 G5HX/O8K2iPAlVPOLYGlCu0bUKJNJ4N8OPSnx306+G6fmYFZyW6sYv2j1Hl6hfDrpH
	 rKk2ca4JHA3qQv0pkTX2tGAUlfw6nT36ENCCHWY2h0sJZBcTQQ8xuFWuLSYU7z8o2O
	 31cB69NfdeUYJtIw19ygFAmNQ9VqUFg4Leefvt24AwaJldGzFMtP91j7P0nmxHekWh
	 tDi9rP52MfPivWLVn25DHuc8ECqwwq+n31BQi0xVUz6P3pE57CI9+4fT54Tz/G8BC0
	 xthcvTGSvP71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B2FC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277488739.24842.13944648871575767659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1b1ed63c2a3ddf5b5abf4dbf5bb987f4394c8321fb0f5323e3d0f1facd041b
Date: Tue, 03 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672774887
