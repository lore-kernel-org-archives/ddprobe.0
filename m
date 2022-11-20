Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F07657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CB6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668930054;
	bh=4KafKoCKQal2H+85sM0wIbJInZA9dpBCkiPQplDd0ng=;
	h=To:Subject:From:Date:From;
	b=eWp0MqTBMxwBirYiq2tu6TGYppPAijSfziObbERLyd+UZfT+Ibxnxy5yGTDAnwkxs
	 q6CwCE1M3KymTavrC4F87Y9PXQpQ4WBvhsEolDmTLNYQ3BZBQO+31xQb7viFIkmgXU
	 ZbEuglrdSuRfT7iWsv51BB8AhLCEWnMPn1DV3E+AiHmucug2BZ+QkmE7fzeE75kIyo
	 UI+nZ+FW0/grJXO2rywsZ6UrX5yVEq/wCFTxR5QiFAzCB3079THXKgb6wce0ttEhtG
	 fRU+SPK+EkA2eXrgDruLJ3gsZjE7JSVMYCt781y0Dw4/NRbcKyd1Qdnd2B/Bn9Nkyt
	 pD6dhOF/46LGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565C3C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893005434.32524.3497859737906853433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73cb71348f6c99a75c990f4e573777b6558edb676aecaff73e3543c1ced4312c
Date: Sun, 20 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668930054
