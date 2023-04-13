Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753464E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDC8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681366025;
	bh=0qtyB6T4SP9ryt6DkeoQnYFeQD133QmuiZ0P53kQTXM=;
	h=To:Subject:From:Date:From;
	b=KBBiaMIIIXl4no0JlCK+TVRJp01+NXdg8jxoIMzL1aJpfHdTtj75bg8jxra8+Qqeq
	 LT//k4s/ZGns5igjhkmGrXV8xM5ZTtcDPyuneJXO/AYpNBUYSnEAtljAt1EWwb0KCF
	 R7jUPr49eRvDJIGrN9CtB5heU5+EebWwKEvMFZIF6Cwsy1NHB2kq+rerXrTwkKS23a
	 yUwQUYzrO/AJWjVP7sSqu155Xb+cN9FHKWf7HIgWENUl44IPuqzzgnCO/mG4cqQ50q
	 62cXeI6bXzdE1qErsnABO7vce/PBbPky0JV7FNgn8/YePg0qFdg4QfAZ0PX4ggo+Kx
	 GfCCGS9QgkHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8CFC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136602577.31058.972408384400639069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67064778cc7588b72e83af566f306e417e323a23a86129397a4de7fb56cc3d33
Date: Thu, 13 Apr 2023 06:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681366025
