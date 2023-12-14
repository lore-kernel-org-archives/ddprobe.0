Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AA46C6F8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH08l+Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74752C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702597696;
	bh=O4xr7D/N7dbqsCEfbrtOcFkl7fkkZ2hriuEcJugp6wc=;
	h=To:Subject:From:Date:From;
	b=KH08l+Z2U5f0ttp0G1ctmV3/Zi730RjRw/5W2r6xA5fSXJQ5eaw3jI8kQByGcLNEF
	 MElkJjC2Vf2MZ6jgKF30DQhCZced7qJ65YHn3DDQnlNEVW4rE/e7wQ8s9xjB0ijwZN
	 uvxQ/oWZDnzzqkIgP7qZjj/iCNnxgO/jG2uLTe4N1VVxH2Z7j6YIq/mnDLPRikzJN5
	 /vOcZbhIH4Pt/2CJ13ax09NaWksB0njGn2ltk2ZlHWW+0kBTW2cfNn4+egzWSfeB0b
	 gyKzWQkMaLFUg6jshjGdqtbLUDKOwovTG4Gp6CX2PFLDUNc3Upj3Mb+gZc7NLsn30y
	 0cuwzZ/qw6i0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D742C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170259769637.20204.13133219835568795661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b9cea84edc27cfdd122e1fd5d4bf2a3eabf7158a80e2112f3af0afa040d91b
Date: Thu, 14 Dec 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702597696
