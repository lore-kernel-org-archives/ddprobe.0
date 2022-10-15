Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40C8372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A80DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665816053;
	bh=tFNAyO5L/RYeDLl7xQhZIDxRKqQTvJWlo/7S5z0YtcM=;
	h=To:Subject:From:Date:From;
	b=YjH10I+gOxZsPnPQoN74eLjnA01HrBg9z9XTtUPCtWm/RSfHBVzkzDfrcIFTFQl/5
	 BP8jSMnuxGp9mL89OqKPb/gWCywZhkaDJs2UyweV2sALPLRZAmx2uCwZnnGPEcv/fr
	 4Z1YU8V2hWV3izhxEfold2rZu++D6ep16e6HE18Is++yMTCEXLdhIVMNxTA06WSznK
	 5HNGro++YrscOis08BDy4t65iEtyh2Cfgib9pmrpwCPBG9q4GyqlgnutnzXKEFj7G3
	 ohe968zAzeu6Z+JefyHljNNGoZ0ZKMmxIBNv25HoDtZqnEINA+o/gkrvB1ci0DGQLw
	 s9riKwx3HcW7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CB8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581605332.19659.15145892143249559877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaae25c99142b3478ce8e4e193781863713ea005b5f4ec4c27a761a0baad7981
Date: Sat, 15 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665816053
