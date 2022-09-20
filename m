Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8723A54
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7148AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663648853;
	bh=XT///15bJEr6d+UNToos2KsP9eBucds1QWb825tlJh0=;
	h=To:Subject:From:Date:From;
	b=NONnVPAcb+Yk+iMZWgXPRRLbOhMvdIs2u858H4niJfAiFZQUoiMazXpdX4BLjGnff
	 H7M+3fZaUQj++y3hWjqMAN/bOKNuKXurhOSMX46rQN//Hrko2z+L3N6KviNkelI8SI
	 g8ziTBKyDIzsj540tFy6/pH8Lb+KcHFct64LrE8TE/iArYIuKj/A/vRbsIHqCD7j1h
	 LBnNBMJSYeSd/W7WhxXavUjh/yrCBSmGuqaPklNgeAWUjlHyk0wJoJL9y2DO5MmUO6
	 sdFfYexXP3ezspPRd6aG2GbWZ1AK9rzzXmlUW1bCtifLGVMeB6lRegZooi1a6EJO+Y
	 QVKwewPa/6IgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59972ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364885335.21991.2339053990352008200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5655a992a4ff1913ee7f48eb26941d0fe17b7b8e00b58f3cef56066dfdbd618
Date: Tue, 20 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663648853
