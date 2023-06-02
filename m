Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BBB15B2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39FFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685675165;
	bh=fpj/mDENXTz96fdSK6tbr5n0VdLmznzf1lKbWFm4C2k=;
	h=To:Subject:From:Date:From;
	b=ecj2alNLJLL1nEKZv1XlA/j25q82bDs79wnbehBaSA0kribCN6QfOPwA82BM0EqOO
	 DXFlm4NJyIzPeQciqpxxdgPBUaZPzVgD9EwqHCFa/dbCCAQ2itWmVeV7oTvb4SdYIy
	 qUNGT9ljOiOA0QSCiBCthYZ7MrUEC1lVri6I2D2M7/C3t+ReQ9IjsFWrQuzGlB1+e0
	 /f24QZvf5SgDiwSE5oi1RFbasDe7SXkeoCNtqyF15qti07Ef86UyLMOLbFbjDe7gfs
	 76tbtMrgg+yKelVEFBFwQOsGaL6fbCEKXHT5AmNT/68uNAto9rLHhi8YOGKamoVBM6
	 PzbHoUSzOdwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DC5C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567516578.24443.4692417801160309160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8f5fcd1879564260c8f9bcc4d9167cac7f02e97b1c9d4ea903594b889fdef5
Date: Fri, 02 Jun 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685675165
