Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D255210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3DAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671874887;
	bh=+ce/xmbxsPh7sxgEMGGygXR8nILLVrjAF2YWfL3JeRw=;
	h=To:Subject:From:Date:From;
	b=RL2wSF1HVyQFse4F1ywb3JedD9aN88b75Q8H0cm1y7jGL5htJEpL0OaMSycAPROtT
	 J5GtztrOFZuwx8o1cId1A9QCwMZ4kcQWJ1LwHla12V3t+1CAxU4hpPYUwR/TdG/A3v
	 oeKP1NcKn8QmHKUqxPSvzuNsPDIxTdA41/U0XN5sPAqBfH9UTGowOCVoKdhy21TeKj
	 vUogFiATO8ozSR7XiH8jI8iWDdLJlJuSr0C67YPL3WzHsJ7HvmsSmvy4aA2LQTpp0+
	 Wzlv57yCl5vvYXq6GveX5SnFGmXjZis4BtAkahVO0fftDT306EuszNghJvI7N5vhZB
	 Cciz5xScQu30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ABFFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187488753.7886.2880631751044137412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0b2799717b371e568ede04de8459c2aa65846b91dc38151fa25a3bb017a5a0
Date: Sat, 24 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671874887
