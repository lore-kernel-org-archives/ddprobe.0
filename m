Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF8A2564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0F7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672518687;
	bh=HzgZoMCzSt5KiU480hPHbSakKzAwajW4CsuWd6txjO8=;
	h=To:Subject:From:Date:From;
	b=pZAnoW/UVJABGPQMvULUtF3erUQqN3wbmL6p/oI4PdyNEVpTZGLRXQlY2OJdItxNi
	 Bau3peeRhbSNA76khduW3pGNheTZsJRG23mMydw/KiDPnvAvzKksEkUg6wzgPb/C1J
	 PsviLfjhwDOUMPpIa1Fuisx+/XGEbnmbH/FprNyfwNcYxAf6FP7mMkc8FcsqQKit3b
	 nJdHKysqD1l9IVTooF9ElmUct5qFiD74XG+XnTeO92ZqzSVH3ZdcwEb0PL3yuW5khG
	 yS3P7RwJLYawr8q5FsMAf+mCleo1KAre0INmgMbYIt+9nCE6ohbKrh1MW7PyhnUfw8
	 bPOWc22vy+Ilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAC2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251868738.20878.9364236566796486357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e519badc7947f5a88ba5719c2d71c47005a2764b2678cd0dea270ccd09ef13
Date: Sat, 31 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672518687
