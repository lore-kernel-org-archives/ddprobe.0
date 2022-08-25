Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C664F3C14
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD15C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661448052;
	bh=C1R97XQhK4gfp4MnNsk+mfSyhQLAUVg1taVA7VfNFsQ=;
	h=To:Subject:From:Date:From;
	b=gsJ40jr9wksmNzI4YfFkE+5uxEtH5S232NgR9J3lZGiaHoUKwOXt8eKd3JMDcXrBS
	 C7ygsKWCfu5JQdSMawlfhAUb+/zIsY55DpbozFgR83D3oejLxDVlRXSiAspklrgsGB
	 2nAors+rHTAX2P+cWhlqyRHejOmvXYHhnkHv7N6nWrQTJr/okl4PWXO8flFkgbvXYw
	 Lus1cXMd2zM2dtLkaiWuOGrhsV11XHCjebPHfOocBsaMsp/rw+6LoA1cc6yrGqEmy7
	 K0ycgHt53xu0SaljBYJodO0/h/2sM1jsZ3cxhUGcHs2VoKFnxkEwSwVI1KngzBl5BT
	 RIW/TQYI+XOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6345CECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144805240.14443.12843184920037051760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989b5929b476747cf2685e296c1941426e3983aee74936fb8ec0321fe69bcd5f
Date: Thu, 25 Aug 2022 17:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661448052
