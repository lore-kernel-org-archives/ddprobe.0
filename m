Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E23C80F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8AEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688860628;
	bh=9XPsH8Ml9A/ncAsTfPcynIL5jGMt2vuuvfq0UMFAMfs=;
	h=To:Subject:From:Date:From;
	b=orWrloPqDIh/LOfH4/N4JKIgpDW7pejgmfNF6dHNdHuLP25CdpJeYf8QLNkcUIpb9
	 XiU9vNVFW/+M+YADHnlQUfMnDBWKBmGzySQypeOr81qWCTtk2ljlwzdcEzrJyh8V/0
	 Ug82lj3VMuZ0PaK1KfNn2se3URAazfCk1zwGiDeCxMXZ/FnDaMTHqB+Vvck2KbpkaE
	 aWf8PRD0PNLWxcTa8tKwTtFcz5bjolbJMfThmMkAPflkIrKJMF6TNvxgV8NDllVkTP
	 HKuvRxGY2KZ9oJCToqGS5+gDgIfk0SPTI6MLArcH00BhU2bcNsYfdMNSyWGaL/g/qY
	 bJvQ6zW61h1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886062868.17610.4024903240717258225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff49a98294bf934a85b45142b204dbed6538bbf8bd7ec9c75544dc2833394a8b
Date: Sat, 08 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688860628
