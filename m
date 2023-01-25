Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E73033EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90D1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674688385;
	bh=u1WaGsvouclCHunt1ThM3Y5GXwcucdlCHwNoU0w9xlg=;
	h=To:Subject:From:Date:From;
	b=jKYqNwdq724rY1HfRSHAmyLZtka0lygPNVVuxwSt+awvJRBpY7O4RncmmetdjN7GK
	 FnEc1xeSDS6rEYWeTyQdNuf+GUlQNN4m/3rJ8tunj2xJBDlK6MtfjSmqmoxpRMKqbv
	 wS1yPu8AyydwhD01ZVhx1KM6/PNFYvou471GlgVrJfXeJ1vqt8EH1oTimMi4ndIidr
	 /zjSFg4LYOqa+FsD7UozAMrGKSOV+SW7D6uWBkmtcrDyaGna9MS89JbswlJ+NOOmNi
	 N2BwIC1jeFLMitSrzwKXZMezna3o191pQcDr7fRfCcqldlS2YruV9lf6gOI9Rl9WV4
	 KjlkEqv1pTx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23DEC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468838578.25926.16745044212527144316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3ee915b347c5e296d5cbb290235d520cb62cfc0085897356d298847b1c4932
Date: Wed, 25 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674688385
