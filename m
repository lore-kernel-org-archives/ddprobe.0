Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07CB3237
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A41C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663779053;
	bh=a2VnpqMRWjrG2mabLiC9+Ar+zVJEy2GgAAUMuzEV86w=;
	h=To:Subject:From:Date:From;
	b=Kbzo/ZB1oMJQckFJA1a7xGBni+NU8F6KMrm0w5sGDF1EDPbRY6/a4NmTQGWLIiILa
	 08zNrLq4xgpKQApiyuEbBdsr2cswu1EEu6nQMNhtbhBRcDxiwWGqMDLDl2iIm1Iguj
	 TZJitSS3IJ9exPhhaVr/so6/tdvJjEV/OfBwZWXpifHNRD2qtGxUjDSaY3DFm3O1Cb
	 rtrNrA5M0AvfkCXIemhQMqHHCk7p+v2f1rfX1ZHNWquetB0/W5pKtrsEU9iZNSd0Jq
	 Al9+INDsXlrULo0zHgRm/LYAYDD1tL1sjR4D1O5ff/6w4hAGaa6sHxHMsJFAWOsmxS
	 3bmf/q8V5gXlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E5DC6FA8B
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377905333.18425.14585316659818153976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d499e9cdbd11e2c1dd6834ccec74cc83753e54fbc77adcfd9d5dc9f52f83f424
Date: Wed, 21 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663779053
