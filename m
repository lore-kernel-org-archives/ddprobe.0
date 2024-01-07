Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDA4125B4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL7b4gxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B977C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704607696;
	bh=3HDtt/7KvevQPSsECv2P9/5APZVLiFrCH5gT2c+a2Pc=;
	h=To:Subject:From:Date:From;
	b=EL7b4gxmRiRqGrggNQ99fSbaxTXGNnTFUVF5NrNOhTsha87qj1xogMP1dX7hx0zue
	 QRqSQZz0+aJC6zO/ywDxY9WZaLhGKqX8S36b5RopjIfxH/LBwEF/pWmIfAX6l/khsP
	 aeHZSIzn5gyu351OFY0voU0a1+m8sdQW2uHqR7lPTraxg9wvXRKRFF5gqk+B5X0RrP
	 DAC/FGM4V23TLZuVCQPS9c9nz2sc2nyfFciVBPyaa27aGSIkUpE431hlTz38yhC+7g
	 KyU8GM0RIbGbOi/6gplFHwu8GTTDIbSj1qLmVQJjYI8G+EvGAfYuOjPWpNwr1O333R
	 w01PKpO+zRnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DBCC47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170460769637.9663.122223522501646303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9e9a0ee915731bf8390b3fda3ba98c8a19176d23f79a325801e07df95bc0d6
Date: Sun, 07 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704607696
