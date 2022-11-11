Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C593963D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EA7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668146454;
	bh=Hj+04sutewoUSAjNwy7kW2q0Ua8/m0P4ELoEyvtFtTI=;
	h=To:Subject:From:Date:From;
	b=nbRkCz+W+sReThBZ1Qrsbn4TbgTW6uL80+hSD4sD2CqcVUiXXlgDB71bWoR8mkKMq
	 VwYSDP7g+YyNQkEjXkx6Kysx3rs3cJlp4RzFIoe8rkmnVlIiJEgF3USDdbbf2svqtL
	 DJlooHXV5J2rcaLEdSzyUSTy0RXr3m4u0t2tjwVN6FOnM8Lt75vi3CZ7FD8xr8/ad2
	 j24Z2lCTWy8anrKVZZouKuD+ERtcS8e6A6NTSkVyrj+DiTqBl4ymfZ66KXsKL1R0zL
	 TS1jR3xwDLTXAqY0GiCAIZIWGtYcHZK/oXBlkRIIk91pEY9K4J6S5ZE+tcfZLVpmHg
	 qWN+n2+kuTzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DC9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814645435.25243.6891820937473900770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3250799e25edc7717494bcd64fccc6a96e42a85fa64cf182df24735b44f8781d
Date: Fri, 11 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668146454
