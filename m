Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125E85690
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/6tAtXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776F0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702014496;
	bh=KtJ7sdAhb7gLvXl74OIV1yu8PK1JrVAfxufzG8464Dc=;
	h=To:Subject:From:Date:From;
	b=Y/6tAtXd5lYejaMFcnmj57XhGYBC80ZWV9QKIiJIxDqxzH9a/jpUW8G2wMgc3Lxti
	 yGmKkZ8YQqtKiBn4K968jORTlcK3nYdP9EKr1RUcmVDMwgWjbqKF84bJ8eCtLPrr+M
	 V1h/z0h4r0Xc2U2x7boaDiHTjlTckqAnpLfCXOq18CHD1bpNXs5tJA8o80fHQB4A8u
	 FUWO4eoEg5f323aLwDsrbOR3Hw3ntTDqxfKTkPDZ6A9mewaVGagzEjOBfwgMrsiJK5
	 DyeWVbaD5eLDmthyiZQE6aj+4VyBiu5icCyNwANt3CP1ntWCXVFlIEkdDhZzMeeWbY
	 M/1HHM8zsqM8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E041C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170201449637.21803.2390978394471860730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f713c7208cf4e34f8f839a49aaf6d56e368d6d3380ee28753f4b4655613d03
Date: Fri, 08 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702014496
