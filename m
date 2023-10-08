Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1FBC15F
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 13:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6BJ8rQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C14C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696771628;
	bh=+l1Vjmyx07z6LdJyDiShl+2w7QEHcl3UpCmDbJxcKOw=;
	h=To:Subject:From:Date:From;
	b=N6BJ8rQU1SRH9DEa+zXDOizMztumqbgd9ODqlXWOlK07hpMJ1vNCaOeTGeHYJofMu
	 YqTNRyuRVOd6Pc57WCiD2uSogat8BXlCgyL8sv51MFg3zHE+igKdUuMDgkEos2Utf9
	 esej/QLJTiJoM+UBVyaZV9oQjzEAC4WKw9nVEzxHAOntIKHWWtucp9vtEydSvEvFsT
	 moHsIkSusc0MQMcYLwaLOLpx5aXY7g+O0PYL8GXz1/UZSvAnPIs5OTb6iUKYLJz9X8
	 XKnGkw5W0Te+WuYPbjV6zGzw2n0xz2iJOY7bQEidLRBbuZXrAKJmEZBsI0Ick4SDdi
	 Hb4zjFuR1KO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7943E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169677162872.23738.14260264336795206651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472f3a01561e0fc15f945026d5653ea5bc36f8ad7f3af68b0e2677fd7bc75498
Date: Sun, 08 Oct 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696771628
