Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5090E7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA55C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674288126;
	bh=VKQrfETfS/WTvKrGvw15q8F7Ifaw+VWqGpiQLThXpiU=;
	h=To:Subject:From:Date:From;
	b=FeCVHH8v164gOk/izjSi9N5RsJc+vHbS7AbDPsWmrD2ovzJ3HakaTJ8k13TO0reRo
	 CGhxjtfHA27X9u9QKJHa6dzyPJncAnT9LrpyUu7zGg2QE8dTMslMk1ZXnCct9CgSye
	 RPdl4srzLH/IueFqB+htnHJdjQlUe063Ekkc70hTCbFb5zbP5Mxsjtsko4xx48B+jt
	 xO4DhxkgAB+hniePj9tZ4eVhAsC9r3FWraLuTbx9rRbQJIqQxPWMV2ZNsCasSA/VM+
	 YvgQ1pzfwg6C2TVMf5g7DxnRe3tasrtqd1B4w1lBALvPmngkGaztldm/GlLEVVTvH2
	 OvhtsxKg/pekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3EE0C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428812582.20575.8522504718678900168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47175f9f6d52924d246b1187978f49f4d89d76bedfcde9a74f1205538600a0a
Date: Sat, 21 Jan 2023 08:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674288125
