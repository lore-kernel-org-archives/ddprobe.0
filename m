Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB1E2F43
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84067C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673022687;
	bh=KpnSnlfcqWlkRZ4KUMtpSyjqZKFmuFhQiJvANdGO8c8=;
	h=To:Subject:From:Date:From;
	b=XujRtNr2tllfYN2Pis4Y1ywRHzDXwJtHXiZfbx+BnKeqe4oO1D7fmkdHZiOCn1+xH
	 +EOdCfbnlxED/7yQlSF35dKRpeKTLWDKInHOFrb9EFuxlfVlCybHK+RgjZoVM6/IGI
	 mvGJXWRRTTikQ0H8m3llwXKAgKonBULB/DSwWHOZeNr/MdtOy2OGi2LZRsRzSXnwY3
	 plv670uUpGFDH0XONdt/I4w/+DvB+ZVm3EEtQPP32qnD0wf9OgMXAChv8Ac3ta7VWV
	 pnUTRdFKhaoM5hrY3S45lbYZq6jAxWigslQEPJ7QPk/+8i4Indi+LNMd+0Hl3T6pSX
	 Ts66zmcU0w1RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABC7C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302268742.4897.777003403744554447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23de59a6c1d1428c2da97604d460488dbbb43a1c251d7d85139e600798058e1
Date: Fri, 06 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673022687
