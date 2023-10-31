Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F6736D
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/i5YS16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91565C433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698716896;
	bh=lGl4541gsnbeHQC2AHJ36KaGA/rSOkXhWcpzzZ8Fnso=;
	h=To:Subject:From:Date:From;
	b=N/i5YS16aymfTf2cDHov27Kjc80IZKrhNq3TekfnrGQJn4TcyaUZbMls9osw9HefG
	 OSinpOh9sWnLJP3YPNtS2VflD7cPdYq5nhDgAGzVVDNmKST5Uh1ambCqjxnM7VSFqs
	 ctJuj66nEghCh7YkReNxV27o7t625wSYnZmKxPwPtza+Sa1K5nzg6M0hQeuuobam00
	 a6rd3qeczidLZgQV9sHntgrx+KOnyPfEyPraxaehoCUdSeOWm5VFi+p7xaPTZg4VFb
	 CoQeeH2ypGdyKUiW6xZXOIQoB2EcAs+Wxohb3AD567WD06YpdY0XiiSbFaQi7nDQ0K
	 v2zg3W7Tcaa6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4E4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169871689644.19955.8808422021183358213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e58f1c1575a5c7922e27da1f8148e9a34d348b633877502087d83014d6e76d8
Date: Tue, 31 Oct 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698716896
