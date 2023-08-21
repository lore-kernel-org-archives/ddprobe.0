Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737541389
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692594848;
	bh=V0rxiu84RNJyIiQFHo7xkatlfM/daDrlWlZfbFmfRLM=;
	h=To:Subject:From:Date:From;
	b=IaJaMpL35K1vH/3woTqoqRbR37RX6r2YJpDSg8+WNINtgtAtJCBBO2wQbIeERuhGr
	 7FOdtVQI8CSjNinUF+MAHKV0lKKukcmHxtAzc281lPKpBbGYYIQkSqiQKHpShF3wvM
	 OFLOOyeaBy19vYIICsFK/N1yPKknT7rGT9gBt46E/Kg2hH4GhmX3oTNnMI2cDYo4rK
	 G9lpT5RTwYSBUd7+LC1BeSridzwFsKtHtoT7Ww9YeIsBw0AqxWJFyvDhR5ek8WM11l
	 8pIo/T6ZK/Nis94uMQijriSP2TwAIjcOQAXRGMMnCKnYSzZAwAeosvXMGI58qnOmpY
	 dE5IWIDKR486A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AECEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259484871.8565.789896039651233524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fce40adde051ceb6881c806c571f44c0eeaf0696dfe3cc884ac4cb424922f08
Date: Mon, 21 Aug 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692594848
