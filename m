Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E917471
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90980C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674136287;
	bh=tPGJbZdbsAxDjenc7xWEUmw3sZqXvpFnaOHJOkX9Z4M=;
	h=To:Subject:From:Date:From;
	b=HeVOtUzNGBEKKmuKvwbP41Ks+SiCP6jKbm9U3oX059fJux5d3Yd0+sF8QJLsMg+m6
	 ui41RXWg8Z/XaVtFT8nvfFdrqwa/tj32D2iyskiiYJQu8qwbMAi+zv7syvfzsIWgQi
	 RFusDrOq8r9vQ2y0b2AP66PbTVwuOHbZDmgQIB5aNcEzPLXR1u1aSEG47vQTBlCAJb
	 78qrMOMsXMUj53zSYdhwxxp1Ib4gH91BkFoZMxsgL+n5hHgsIxbVmaBOnzRVL13oG2
	 lDJkf5RzZBzGPyCdkUpy2SRFqK1n2X6G8XzyxQbejGHyLmm1V/wua75uOGzruZ+sp1
	 +IDKbxAN3aQnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEE7C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413628744.22462.13446131600818568533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39b69a239db58dd138594566c3b48d65d1dc66f22005677cc925d1d662807d4
Date: Thu, 19 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674136287
