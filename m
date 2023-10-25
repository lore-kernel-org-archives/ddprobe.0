Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A5526E32
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1RVL5Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841C4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698250696;
	bh=IP3uMHTs2Zz0YV8ZKgap76hUl2Mn2VAztWBQc2sFFzk=;
	h=To:Subject:From:Date:From;
	b=n1RVL5VndjnVPjzWETcYUj1syx1NPf8haDXjGWYvv1V0Zo9KOWcYar4wRbedrOmdD
	 AzEaUYTtxFQ08fDFWn9i5zAwacTHDQju+EgeYN3NI+G8Eeg9aEMpS+ryYZddJBrjcV
	 t0+XaOCkPW3rPTFKiLkhzKgud9wYoUhpTBjHbWLjMWNzubmgdKpu2wxm4NHJSrXYoW
	 QFvsxHxDljM85Mss4LpoXIpxYQlSwzvMDzj3+QcNkUsJkqEgZbW5lcXp1lZA3KeOhg
	 VhGTMv42K4LVjqqX7u/wCnMXsj+IMI80eWhKby3wK7LeVpCIUbFgNW4j6F0YpY2bAW
	 3MP6+BC5RSeYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64086C07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169825069640.6384.779351026389976807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c3c0f201a1076b9a38480d212ea15f44af5a3ac4401097094db516f49f76dd
Date: Wed, 25 Oct 2023 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698250696
