Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BFEC2F9
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD85C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695506108;
	bh=TqlDnPD2Q89X3uW4roYXvptXwfer7+yCDR/IHmcC0uw=;
	h=To:Subject:From:Date:From;
	b=LLAqdsQo96Utp9IzcFDGzG1i9pjCbF1wKQDNhkc+3qlErlS9v3aal7FUCMVt9XDHo
	 3XcvbW2Y5HFHOLYmdwOvQDoB6DZTgkthvfWCkiADtXYS3btGr9a3ZF5Ber8roxl+uO
	 PSCcXk7X804I1sGU6NTrZ8Hbej3J05iNRYpDO58vf/1lDNT128hYZvWp8jmE+SFm7B
	 CWH6F4nFV6BxElcxBPrhpffLPZxLnGls6gWkj7c7yQsmlQh/JvvGoLi2gPXUvsugjI
	 OupRyZtctWsDX7YXIOpBDS8HqH4FEIzqXL7tUhc9ihzrsYNfJ6X0dyVupSyj30yuj6
	 DpebUqyTMTHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C59CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 21:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169550610866.27110.17715490357885719977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a782be0070a13c3540937e016b3daab91c60999c983b4e1671b1cd4ebfb54fca
Date: Sat, 23 Sep 2023 21:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695506108
