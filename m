Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B126233F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2DB88C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686499926;
	bh=SLwCHO36we0kTGsvJ6D97AsBMY+O0+c0s5AsiCt5CIA=;
	h=To:Subject:From:Date:From;
	b=Ot7p00yBAZGSg22NpORKaJlpYaDHgv6NOOIcvQ7OJvOoz8rTbjToboNDqfyKxgiTe
	 GuAb/g3nkoOemDkDn20s73kBw2SdrcfFnFCUU8S47yHdoWyeTnVw940SlYakeqvhqE
	 EqJboWBkrSKXq4D7Rc9Hg6n6mCEJPJN9TdvGpnlJNPHkoICq3tPJ4EcuFDCCckjkvy
	 xizPbJ228Paqr65ag9l9ya7zEBwwxbMLiDGmrz0oq+9yHmroJpUMjQH4mUt94i+fzs
	 O5rYDpIalb2gA16IOfxxC+LLShRJqUugVzLa1jfiw9MvdUsswMJcdttPje33DXKn8+
	 t/XCt9lv/VVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EE5C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 16:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649992582.25368.14827054457470526892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969f035dc7dd6337bc88f1f3f7fd3608631ff45f6e0b1c04ad06b3f2fb35f9de
Date: Sun, 11 Jun 2023 16:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686499925
