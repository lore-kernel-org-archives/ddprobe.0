Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A87747E
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDV3hvEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF81C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697516228;
	bh=Vkgttk+s+WJu4TqW+IQkDhLkv9SgBy7jLZuCuVNa1JM=;
	h=To:Subject:From:Date:From;
	b=PDV3hvEGXLKV6Seha7vwblQEuv+nlDAHSvIVAPuMfEOEE1VsY8Tp8uDUZiFowFEKZ
	 +MvpNIb5Fy4AXXONgvIwHHWqIvvYvPvRi9aIfOqQHmw/QznFk5RArYLCxpaiCYH4OZ
	 ep4g26VbjQnuuZ+Y10bAkdz9v1dAiWGj6pyMOKtm+bKnx+/RFsxIGWeujtsKnR0ERi
	 9vkZiDpAk7Nz9HkyTsaKRC/TCubdvlGKINNxc+0JgctIiDMfeXrAzVkgvm+bFH233F
	 o0wbajqrXScZivnMpvRjtuVFeGzpQRdC2e9X1Z4L2RsT9T5lNXh2S26cS1yotDbyq7
	 9Y2jw01fcPSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE112CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751622870.6653.14079685801903327881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1125f8de6f9fa828179a747304ccb06df83eb34928134f68c480d03fec653fd2
Date: Tue, 17 Oct 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697516228
