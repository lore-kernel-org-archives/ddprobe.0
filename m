Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71FC7462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71734C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663690853;
	bh=a78BThsheRmr1Al2jtqilC/lhD06h9k6+AS1Jh0Cc9I=;
	h=To:Subject:From:Date:From;
	b=Ae6S/4FzXJ4+CvqvmF1hurPzyuYJ3DQ2VEX6+l0YYaiHl1zpuI7TzcChP1Wogya8X
	 NTvczSCkK2cYlapTPSGvI50i9jn0TRECY2Zkdf/hmBM9721Ck5mb18tX+Nc37ePdRD
	 t+64Z+C50fvI+tN3k1aOHxEXonwxwEcRs48DteboZ+UKlyvIAytN5JIM4TGtZS9tsh
	 Dwvacks4u5e1ZE269KM++vwqQMqPASOfau+/pAkFc0/EmyDsxgjkSkUnTbJp714jW2
	 k1/1Efo8/QGbliST/sE0n2/VUmJXuisiMHougPXbulWK18uBhqHJ5DH4LmuiG252Po
	 RFQCtX+7RHbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EF8C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369085335.2336.12655991513210162174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288129b57647584f76904ee8158fa32943b36134e996f1804118769eafad99b1
Date: Tue, 20 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663690853
