Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576A8154B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69DAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689031028;
	bh=UF9mT8vHm7598HFM5xx8Fs7SMNCrsHWad0pEgtE+ZSk=;
	h=To:Subject:From:Date:From;
	b=cNcLLAdJB3eSh2NNzcvLkLKD9nCt9VEOsfrFmyBcI0QWZjJ8ftImr7eVFIgPCJXkG
	 2/dLug9zCCPpdoYMPXI45LMcspOw/+v1in1vvj+WNpHweQ5yOjOlMzOMVrxnEdQd4L
	 gT3VZsQ6IIA7a3wDPQAr5iWX7Mfc+amUsUybqTO261xs8y8g1ASXVDbV6nnDOni6kD
	 JRlywqY/p2BmQXGhdEnHgcefMV4bdGf9R1FHmj/+T8ivgs53bXPgKE0kRZWex49UHJ
	 mUduD/trZD1x0uToDkAFofXcAm87RcOQL7FoLZ61Sa6nlIWNmdH/Qe5VavVMYCCQjb
	 an1MY6KYpNXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD13EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903102870.14343.5539282470133887347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec6604ed32fdab34cf485cb24cb63c975c62d9f1fac1d20b2a85df02cd482f7
Date: Mon, 10 Jul 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689031028
