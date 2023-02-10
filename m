Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404A280F
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D916DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676014385;
	bh=5GuLdtd35c/0tZJt+ZylnZiYGWbtHPI5hTVDGrf8o4A=;
	h=To:Subject:From:Date:From;
	b=J20f/gRpdjlU3mESEp4MGGIjkFX19J84jdzTfcF2zj0XNDkTr6qBq8lJ7/03Yv/9I
	 Lo0Biv8ztx+HIIdXAfUte0TnbiFa8Q1Uk5iKaTaEBkvYDGi32+DW3a+2C1ZsDP4OyA
	 eAqW2J9Xzu52O2pY6I+Segtk3eZYK2Xrs4qcUo5d/bFyP12jTaC8CTKnob8HNDnWFO
	 wh5lpJVpsbl2hp8JvKI4eUATIjmTnj07HBSD5FYtS+RCfHQobJBx9oxz64IOpGfBWF
	 JIxz70B0v9rs7AJT077oKBUbVOr5X7w8cpcR5UQ8gUdZnJVnM0/aAeKrRYE342yWeK
	 eeAaUeDTCsUMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9AEC636D3
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167601438575.7649.86879897946290441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899ee26c6c2613e75d3e61e8cb024538e51304cc678327a9ffabb335db926178
Date: Fri, 10 Feb 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676014385
