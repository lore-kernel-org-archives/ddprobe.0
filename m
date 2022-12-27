Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC5E62C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D1BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672103487;
	bh=ufhKllzKNkdl9/5RilM0eLxUx+HKPpkzSccn728OnIE=;
	h=To:Subject:From:Date:From;
	b=CMCudRmvxVRChJV4gu1MIBUh2NS9oQzzf02+GYEaDdMmMV00q0xDYTmNjbYKL769I
	 xYwW67uHmCDkK3UvW8TUbNmUauG35AVWqHSqyve6xgo/D2yMBCrbONanRjOr6rV14u
	 XIn4EIUnckeN71IbnMlFx+HK0p7BZdQZev2Befa8ktkhVohkWgJElVpdL6V6MFSpnJ
	 BC6zk7lGA1IK9ydjRgeUVo8mzSawKRS7TcIukJNfMr/5EcKXnBdwk5UK6QyGAunAHa
	 k/p4pyaztRxiEpR/AGRiIavWXJOEUjGNW9WN8Ui0wJoHdy9PKLeLizuCncg27+oNGy
	 whDk51ItXvVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668F6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210348739.20201.13434318464853699755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510d312bf70991a8d5a537378572567596e71e1d04b026ff6e0b1ae833f10f3b
Date: Tue, 27 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672103487
