Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138C547A40
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGmvVDYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8484AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702836496;
	bh=LCPZ/YsEqzmcsuk42DT2L4QEPiZ9BfggJi/vGCSuodQ=;
	h=To:Subject:From:Date:From;
	b=JGmvVDYbtt2ud55wjqZd1ArtfC5IshuNGRnpBcffS9gplTbi0/ruYAltyNvQeKHwN
	 oi+Q8O28V5PXBx33hIRFnQLYKFoF8onjh8w7/W2bNNTKBzD2oVn2OiqW24ot6FER8S
	 CYeeiN/i/nkxC3vqtvXqKqZWAHyJ75vosOtrfVjmnTiQjESrVddlZZQsv6KJwstpH8
	 awnXNUkKj6ePTVjHxo6lvuGVx8wYlvkuqaPAFT6UspsFDW0Zx10JqGQrx8tJBh5np0
	 SOMytv1dBUOMKqQmppgvxcEVBMX29oFWLFUt9nPAMsniKB6xNYFCmhX80U3iQj9hpK
	 yJDgcm5T46R8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B063C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170283649640.11172.729764240411745135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440eb476a07d84a47ff6f8979dcac96a5c1d760206df92e707bfbdcf41f25d7e
Date: Sun, 17 Dec 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702836496
