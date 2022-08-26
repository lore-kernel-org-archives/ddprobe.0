Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD46C3FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F56FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661529652;
	bh=Noc+OaS7PwD1TwHYoYXEtnmAyJCH+ol11cFbT0UHge4=;
	h=To:Subject:From:Date:From;
	b=EiEjEyaGn00zMC5q+UBxkWgKpLjup+6g4obAm+40tKvs7k3Nj4URbfkPPgXVXecEA
	 NpPKJJztfbmtFABABaYp6+SuVErAEmvFFUe8k9xZF8cKYFH5DAYXKVVvEIIviVJByW
	 guII4cHpr9Oeq+wbiV9112kb0nOzmj7KqbKgs2OadblXLupFSHIV7f5oJ1ndDl1NLg
	 D/2t/WZtTk6Qk3afcsasEL9MWk8XAR1l39goiqXiqkh2sq6Co2iqHBmzUGvt0vSf04
	 G1q8XiSc4s0jaA+C01O4GY7wpFv9PWcnNddjx0gJPHKFraHWG2U00CBwce70dl4xnF
	 o9lq7AAimiGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AA9ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152965232.4377.8725562136103826762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f947e84d636019ef87ee5d24b2a8ac122243a58daf06775057f9cf93726da9
Date: Fri, 26 Aug 2022 16:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661529652
