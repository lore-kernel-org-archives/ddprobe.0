Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA8944C68
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgzVMmr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A61C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701283696;
	bh=1QPmc7691QKsBx0rIjsearB6TgdeVMX+rRvfZGp4m1M=;
	h=To:Subject:From:Date:From;
	b=QgzVMmr9Aj/ODooIgucGNe7fRlyvk4Yao+lhyMjZ9dxR9In100UmUI/f0oiS1QOsH
	 5/W/she2ce+GWxDSIoW3jRkY7H1DN6M7307M7+APytKMf8q+uvVw52GQ8XXnC/2jpI
	 aa5YKmYCBJFKlAhAjsIZKvzj9J4OM6T9zaBSLJgbiOVvEO5P9Qo0klfJ4GCJK/E6TV
	 7gFNXpIp7XUPPpYskbgDszcPQcNLGxH+qHVNnAHAzakR6NABMCd8JPibRfKdCU32s+
	 Prdm2jwGqVauGYxe9YmQrcDOSBRE53kOmGmN9r+0Hlx5LWK40bvul9ss2vEEnO0yjY
	 ycVCtmoDQ21Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C568C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170128369637.16081.1288399586889024537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd7f32926025c815da85a39e9c7665b00de17cfc1a2715d649de6930de656ff
Date: Wed, 29 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701283696
