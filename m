Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5CE1FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F1EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671610287;
	bh=24bcu9gdUvJT8SEFpad50rEkwlSS+VQEzeCgDbzXlIg=;
	h=To:Subject:From:Date:From;
	b=UjzSMnLRNWDV0sqtyegYGoo2NaJjCEopOehykhwI7IBEzzVLwxpaHhKxgtYT41OPE
	 T53nvJcciys2x7W68iKDn3EVfLeEuz4k/QluATEZ1ldNG2+O84L2sUVZcTkgVwuM9w
	 FdpaWeAXjAyOceBbZhzAFeOzL7i2cDhdP3wDSjdztMwGRtcI6lW6ewSkRUrxqCPBF9
	 K3YKH7C5RBDEsJhW4a2uOOmnvlUSY1Yk7xPl7vSkyZ8ywQKNoE6Mt9k0qOZcvk0yi9
	 Bf1K7UBwSnstITIW8oKtW92MJdZzQiKvqTAFwm+zDX175J+r3VFIHFz79FR19Y21NH
	 xjR22Zbw+FTtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D7BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161028741.27736.6481168875802508515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc2c0f83886fc05b979c4355006f3663eda71f2be16c2840c23723a4fb7b6fa
Date: Wed, 21 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671610287
