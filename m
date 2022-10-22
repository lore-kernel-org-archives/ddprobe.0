Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF5933DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B4DC433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666479053;
	bh=umMRkqGWGI2twZadjI6JAq1g8y5y3Mj5JFYfu+6Dwwo=;
	h=To:Subject:From:Date:From;
	b=dLSDT2y/EHLfX5rf/GowHruqbTSJD71UI5/5VmZ3aJy2Qb7624cGrOdsob7NFo0xP
	 5sPYOTP0bOPeUtrj1dE48BsL8rWR05UD5xwt+EtMR7u85S7QgOBa5BSnVrZ2RqBzcH
	 Cbz4QdMJhYTBztIrCBhPImA0Y9qv1Z1DY34WpO9CfvFZIWZBTlmN+Yasx/qe0GYCWA
	 G+7oqyOWmpyj/axlc28nvbDxC1PGAbZ2p/yL48i3H2DeZ2aqQk/AR39Zi4Phw4VnGD
	 FNqk3UP9HHTWveVNk6Qfpd61yDhrKgXnk4nsMSIsni+JIrif7+6bXRCvF42xM041xO
	 fGa1GM9bTN2Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE3CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647905334.12581.13588258005652660405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73a382d40adb1caa70c29f1317058d28560af1f6652feb1158d2898e230684e
Date: Sat, 22 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666479053
