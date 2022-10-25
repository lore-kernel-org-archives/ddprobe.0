Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBFF7479
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B725C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666716053;
	bh=8CLQBBtgNMqJsaWU0BztK9ZJ5xa2va6Nrx9Fq/kSMZw=;
	h=To:Subject:From:Date:From;
	b=jxrczhkcFLKGayGVGnMLP2zWGF5W4WkluwGY98k+yz5YW7F1UdtAfgrADcLV7GeWT
	 SGOkqCxO1CWrEycW8ikLub5jj0U7Y8ZAUJaCmqRwr6KHalBNHG1eqYEn3YVHflXNLB
	 3XiK2LF/W415rw6QSEJcllAiBH1Mj7O2+wjp2Sh1DJuHE5PqNe2qMrR3AsT5N8Xr4/
	 ze82/t3DdzPjLgIm5zh+vu9k4Vagpz1zt47qF7Gp3HY1ttZ0MwnOcN3lQVS97ANzWU
	 Tqubuza40ALK9QN/P+geDqbbSfAu+NdtgYmwa4wZBWWQ/ebqsjFbZDMVd/jJySzcqo
	 supV1vFm5+T4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551F6C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671605334.32082.11948927816566214809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12aff732fa86f2bc97720b5654d2e23e7ed9f2adadbc08b87fb21a6a8eea3f59
Date: Tue, 25 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666716053
