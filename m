Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CDB748E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B778C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672615287;
	bh=YO2wuYNFdFtVLru3NdJstbsFTIL0ee5b8VCGZ2NtKUg=;
	h=To:Subject:From:Date:From;
	b=ggqYqmmrUlh+0UYAHZlptJyzFImmdddf8a8ff/8ABjRjnL5SaKDkIYSj6rvcCEM89
	 bSTI8mfMFmIF1YUy7ZwQKqObYy41jSB4fxr6FsKoaflm+1cw/MWH0JuSUggo2wvodD
	 Cq12VOli883ruknZb5G1OXsnpx06qZuHCwAxhHwJ4I1OtuCvyHWVw3KRJGTXWLcS8R
	 OsUiQdJvIcw/vn0Kn+suKTDvLczweSVqxoO8+5cSUskTHtR0moHygerQb1IAL0U1ZU
	 C8xs2hEKcVts8RgsI2k0w4Gwd6hw26kSoZZmSdj4lFQ43qJA46XgXvmf1VETo2BcnB
	 KNa6YjRky4Rsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656C5C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261528737.31609.11875403450335209941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d347b338b3c774c832fbe4c382197449c55dee93a17a9b552f1c4ec31e5684
Date: Sun, 01 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672615287
