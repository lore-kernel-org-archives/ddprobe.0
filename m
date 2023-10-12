Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644D1208BA
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCgyUFpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58F3C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697099828;
	bh=SMJZye+tLqZ91fCZ0ry2zBXeHxp89Y1Ue1AxoRinii0=;
	h=To:Subject:From:Date:From;
	b=vCgyUFpMGYW/ypBakUaQk9uh7pG8AwRwVVcKLpPVLoCglLkSCgoju88H7lLeE4cGi
	 M/oOVCWieLYGTBA7FC7emSFpKe9r/BNK0IRDGEs4ZVBK+3CDVTdwYkzbeOUCkJl2bg
	 Eim9RYc20iO1iMb7ZGh4eiVKHUVEzii7NQI6V7bQ7i37E0Zx8jqLPtHi4w8+5Gq0Mk
	 Ht7UD4lYiIK20jeV1pOs19AbHUSDBxWYP/oI3EjqhKhcJENR7plZhDMZ0DzugACJkG
	 QLkBRVtc55UBeTsIazuQuWHhr6X6OGvl1j0Y4TGPuv6CuSJ3/jJBAsdKkODI1Qissg
	 r+NBm76415ujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E7CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169709982868.4417.7652302454752981014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741be2246bb585f122e21400bbb1534d82a424cd495a6fc965540a12c6639f0c
Date: Thu, 12 Oct 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697099828
