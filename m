Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59651FA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D55BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673938887;
	bh=kIx/kgEiN11rVwe7Y4PtISZH8qiGmImrXR4D0Izfbpw=;
	h=To:Subject:From:Date:From;
	b=EIIu4gWmOXQYoJrZRKzNKKqx/Y62uoekD3f6CUKI07MjE0Iq5UW9WZhpVbKP2OXwf
	 pRjizoabZbsARLchcO/m1Xy8OOT8xapTfXDy+utSLFKNRMRV7IcEDSgLoV1vtpLmsB
	 OUOzQNBDFK1lnfPGqwc7BrPE1zYlY5C0tmi7HTEhhmTu7pSNTL0fRomA6/7xiwpIj7
	 XgRC0R+A7kTaUz0aMBg0eaDhH+yM3Ggq7GpwVhG05Fsg7hsIHfvzNAahCz754AcFpV
	 uXu9c076PQTQXSCQ54Zl8dnoj+QGGYPYfAUPLajOeaPcHbm26TLOJ1C4j6JRA5mI19
	 R81nC9ezrcY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADC6C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393888742.7705.17268259691170774315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936354869ded7a8527542e404b763f330cbd1c439bc18c4e57a1f7822cf34143
Date: Tue, 17 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673938887
