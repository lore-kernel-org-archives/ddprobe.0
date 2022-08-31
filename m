Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD43F65B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73089C43470
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661931653;
	bh=rFO5EA5LHaxe64Woy2mrPUqwh/5VVaCT+FigtLvYZfg=;
	h=To:Subject:From:Date:From;
	b=M4u6zwWYw7hkEgx0Mkhf5pmGV66MEu4h3WIMNXBoOWGpg9pb2xBWJ97hZHgdkHWB3
	 LEPlWS9RM5IxZu6zsesxfitOVbrhwCeiIAFQvkW2eeUZeupFisQJbSKY8yidahkt/+
	 O1OBETaqgLRov9nO78cKZerQhRjuQbb9Cj3oX5thGDeojVyHTmnUgcmlkWwQetf8Yk
	 F17OIjEYziDmpoDRGs3pi9zzlOZg11Uc5q+oEBqMKxu+AUDwiohxx2WnM63XxTUa73
	 n+RS2DLLmW5m573ABwpaXRXTJRvFNXFKuTskyO9jihfXosZ81cwRIssamvPwFsHwSO
	 cDerwx+UECphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A38AECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193165336.2556.7765180134555548789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2952d50d826bdca1aeaa67a3f467c06bf79a44d1bd95abd0a4e398e2037b04d1
Date: Wed, 31 Aug 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661931653
