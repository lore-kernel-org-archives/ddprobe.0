Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079F2224D7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCAUhuWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A9AC433CB
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701686296;
	bh=Uf2sJti/m56I4gqvCqsgUkt19Z2n2iW6qW14NeRGPc4=;
	h=To:Subject:From:Date:From;
	b=iCAUhuWWvw6M5q3v8yauAMnzKKIU8U4E0AP/MHUSnKaEkyxqugU2HZY0LHj3/R8KY
	 /iGfXXmAgkBq6P5Ezt1kZNMBjrH5eXTKJhV7vXP4p+qeeM26qn+TYWyHAr0C6iairH
	 5iLUTXnl3KRIQ64N8Qp7hJOhW+ok7Osn/yhcHW9fLZBL9jXDVavkDVWIrxX95Pgp8h
	 +06Y7rNc3G2fAfT8qIclDKTEs7vib2TeUgNe0MvVzGNBf9CO0njl0c4n5gaClXZetL
	 n+7alOD6gw4Tehcl1W+nbv+oGkjEyLQzULB/Rrqz4Oa0QaaHICdFORwbQE6jqdwl/h
	 2qdgIocrXfPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D731C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168629637.14663.7048670611958405919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d71566f6e5a8523dd636a1d7adde35cc55341c98aee69a58a94dfce91883c8
Date: Mon, 04 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701686296
