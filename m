Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F10A640
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06344C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675145586;
	bh=AjkRna7+v7ky/mAwhmYL1l8t3hs7Bb/s2sP9cO56qDY=;
	h=To:Subject:From:Date:From;
	b=tl7+ZaBYnzcZMj6M1WoQ0iqGrnjA82J0brKExpY1o5bC8u6QGsc7NygwApVextoUU
	 nKp+Sh/diiRaKMPFXLIHPjXHwYaNPMXsjuPv21dPwO9ox7aZskaLorIgW5EgOM3Tmf
	 qdYkoZdcygIINgBWzL9HMCKdIDTLtP3lrhXR6Uf3FjWqXXO/gI8OFnyUpyyXtkHVos
	 V7MeVccmfHaE0E6+lYSWqVd/DSjBhZKwzOtCm/Gc4yFz+ny5CsAytQJfdLoaAYz9o7
	 KNL6MLI6z/rtjjMK9+YeKSG9aGgxetRxBJ4L9eXoUWii9BFjp82IlbAz/yCNEdBpAs
	 2ah9aGpHXOFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D93A9C636CD
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167514558587.22092.12116357868747753497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71a9f290e8671e040344216d465fee4ae53ca440b34ec70870a26edcaea6ce3
Date: Tue, 31 Jan 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675145585
