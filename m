Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2A134DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4JC7ogm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87327C433C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704642496;
	bh=4h86L7Wwy/crrfvFznu7A63nhCBiGG0eBsRUcyFdd2I=;
	h=To:Subject:From:Date:From;
	b=X4JC7ogm3IZ8lqqDTrAfIvKHAHPABrZ7O8ipQQ+SDi5JQDfdnw+Gw0pFkqgidsUyo
	 8lovz0fEhET0jClaka+9c2YmrstjWolT7uFszWLgzUVH5e9wLSfcl2h2ODhKJd3WCv
	 G4xtBtK4STCMNgcXlJItSBh/Wy22qZM0PWG+Kk4g+5Jit1u+UkFUroFZCFy1AtwA9P
	 GZ65Q7p0J6czjqhwF6kzcpGKrkGAuFb15rZWJDMHu/HoYHH7ld4SZj9GgO0iet4hxU
	 NawGEax7K9zV//tEIfHAsfxMGT5+k77MnmN11q5lqMvj0cpS1kA+cBkbNsoyyhxn2A
	 ELpe4vZcdVv4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A66C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170464249640.20544.10170743125970164265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d3030428dfbccaec1c703fdd32c1bcc46672f887237bdbdfb166022aecb2dd
Date: Sun, 07 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704642496
