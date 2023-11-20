Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13D219459
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m55gvnBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8027EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700482696;
	bh=+l6kp3rwIXbM8NR12PuuONE8ZGUwl3OK/7mhwAWV0Qg=;
	h=To:Subject:From:Date:From;
	b=m55gvnBrEXmCFV+9yZ5eJA9t8TnkLPKlnBiK4Bi/++98rxaY2OxowU4t0ZHgbZ8Se
	 mbGlSfzpzBPE50C4zBTyZNKgCh8HahHthgPZ0I+ptCfipV5hQTWK5DKQEsYDoZcv5G
	 nD1seuNTLolO8ycMxVtIYKBrgIHD2gScJlDeAfEnPfsDgO+6aAubQ4T/LzO8vBost+
	 onckSS3Ktg+1qOuzt86ehWlEtC3LohXaFgBxTa5YV6U/CQ9vMqBBwp9PdrzTZZW2aX
	 mDgntk8Vzo/BVQOxyKp4/kWF7MGHWrio9TxKvNApTiTk5Ie76Pbs1B+EYEzbwMGvwu
	 XL7BK+0pFBlMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61102C54E76
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170048269638.16092.17658557965235290892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b5d78add9166fd6f04a34fa8f96a116401e46a6a4b2cbb9aa01e0e5aadf8c6
Date: Mon, 20 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700482696
