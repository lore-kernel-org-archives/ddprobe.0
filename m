Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288A9D2ED
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A9DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679420285;
	bh=h9sHfyCJ+nuLnxP4PrI5UQSAwUqAz2p9O3JDHKLEKK4=;
	h=To:Subject:From:Date:From;
	b=rxLaFPLWwJJnRXzSPo4Enocq4l8f6SxQavUmEd28MNQdpd4dud+s84meR3gDcOOrH
	 WPF9XYW4hpmRvMfiG8yX+CAWt3l7buQSXsb6V4mHB2bh6Yj0az/r/oe1e6YsruLMHc
	 holg1JuZVed1Fd6LHLOTsUIlQt+sVxERXQ1Z8osKToIVJKjbiq6BrKawAdhY/WQr/D
	 Q3UXch7I3wfNN/1qG0Vnw4qRtLo2GU1WldE7CcjB6Cquioo1TxcJMVqyCyyaXj8jwD
	 ZnotFbUwxjtBG2Se6cBLOysGadbJx0zrutMMH5Vd6kLmb0yVkhrnoeHBaoDPt0r8fI
	 eZTWztXL6UZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACEBC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167942028575.22055.11433148141215303810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c37d49d5f723aa58dd7214ace3fb31e4e0251981e6d4afdf4cc0dc8669e562f
Date: Tue, 21 Mar 2023 17:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679420285
