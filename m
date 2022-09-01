Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90D17FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFD1C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661995853;
	bh=UI34naHQb9uyfwDdVRQfz9gQNalT0qEVuQPXUjKAE6o=;
	h=To:Subject:From:Date:From;
	b=lOYam9UjQEzqp9uFLeNy44xRNxK2GlqfWzs8zw1fS/p9TZoPWONZvfJCcMGSpwJqk
	 z2vqHShGXq6VhOZDlSCNW54SlpUSL0huWuI4gxrbcbPotMAtmFHmHK00iEb+YjKL4o
	 drB7QG63oTz8KptJLaVF1mxbTkMTU7kAkFD3dzeY6gTx7Wk/J6J2iqeDxGOcJj5S3P
	 0et5FMrdVYHER1F4L56ZMvx1JwVBbzJh1FDH728VzM93LQ3qZlFIPFZ+ufcB8Q78tU
	 n4Ahwpa5MoaH5jWSLMtwVpm9ENALQyq37+TrGmXntPS6VKtBHq33sO1WSnxtxouF49
	 9+sI0z34gsm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E54ECAAD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199585333.18492.8145106147120594476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a76ce80d4c6439fda334dccb5f8b13627cfb8b090495d861de458fae03ad73
Date: Thu, 01 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661995853
