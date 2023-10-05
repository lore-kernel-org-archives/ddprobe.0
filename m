Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AD12AB5C
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl04clKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF290C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696525628;
	bh=5lIS5FCBUEwRLN9wp++/g1/M+Xz+Gw6BO8mUHS8iZsY=;
	h=To:Subject:From:Date:From;
	b=Nl04clKDnybyT+d0nu3myiRix3OafuG2BXziO5bNSXXSeCKzAYdTVouJDw0A2JgQo
	 WQEiZu8PzqqO7rWzmi3jESLOZ6k+0953US80zeK/ugtzj8b7FVCEDmy+3EHxsyCRcs
	 rTGOJR9Abq1GrnAyZtSxYCrwdXN+6XqJTa5myvKmiBZoSZ2FQ5PQ1UVzsEVmSSRW1y
	 VD43NA9UlNdbW5vxmj3ulixs4+KuZ+iExcvxm2xtiuKKo4+LUJ51s5Jm0xqxCuXEOK
	 0xm8lX9RYXLuL+Q/ixuU8xdyvusTlwGAN8ccH5zE2pAqFqWG2GoNo9/UJjiMPOMg+l
	 Z+0xDJoVqXPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B3E7AD45
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169652562871.19437.2234757915904801655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44da117c883da5b3163f915c85c0d1210e7bd396582db4c6b02b01f7bc759ee
Date: Thu, 05 Oct 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696525628
