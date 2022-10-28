Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCEDE836
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7485BC433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666981854;
	bh=0yNRQIG4kBZjQmTdurbGfjYG30EkLzCnfE2PRlCr69Y=;
	h=To:Subject:From:Date:From;
	b=kxrWBF17d4Wttss2GJLDLSKMGNb6CdzdR8nUevMe8aQrpDPYe2lYwiHEtkI+gj2fq
	 aprDv89jdNewQ5UScQjUijqsKjQGs4MY0EvH9Y+mVFI+1JggnHq7lpNABw/81H+l2B
	 JihC/TkGNPD4VeHs7LjXUsz+53S4LlL4Vy14O5cUHP0+NXCzHZ1xvYiw9t17TIGBnV
	 pb/aeuJQJGou6w47WN6lyNd9CKnojt3M405SMkjF73Wch+Lm+5ceymT22NLFBUQgI8
	 ooke6fZtNC2nnFKPoddxmyykuKxEzaGPSCNt9KVUHKYZPX/68Xh8v4xWTXLVz3Rvvx
	 d2onwGsboeKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5978EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698185433.27435.16437681197757857341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000ae9bbed48a808e8dcb19c1e2bb0941b547618d0b58f15a7f3324a7c1538a1
Date: Fri, 28 Oct 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666981854
