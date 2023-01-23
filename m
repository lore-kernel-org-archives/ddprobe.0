Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3491A2F49
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 14:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674482585;
	bh=Fie8MbfCb0Cn8UnOV6RX0MrDu458l8rZI4SJ33bZbHQ=;
	h=To:Subject:From:Date:From;
	b=u2Jh4iVDyCIy+ZgPew861bJbJ/ywrIc/5vD+z7/xslCYZpMSoYQYzpVuz0z/GTU8k
	 w8+hA5ILizM3b+habDiSqrYW0OxzrNyCioNcbOiClw2dzQ2Eve4rhPsjON/Z/xOFFH
	 lWt4HexWukZcDoMDs3Ly3+ReYtlkMvB+A8AH9ADD5IJW4qNN6rb3WWoptCyJnsU+zM
	 Lxf6+0U1az33RQaGMzcxP3gkKWnoOx5dGiha9DFkPhtbjPZaIi1Ecd+sJoScnQoJq3
	 klCWWs30V5Wt3x3Y76zEWDNXhtDPYWZa5IWEg6fROQrT5MTxzCiS/CMHKpXyAsbMLC
	 PJojUOJRvj6Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6310C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167448258573.16181.12684098120507209150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5d30bd365ee8aad41195629931e25dacd4d8bd1dc3b2c7321f5acc2a65a117
Date: Mon, 23 Jan 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674482585
