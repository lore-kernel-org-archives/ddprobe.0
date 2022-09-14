Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53663D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69750C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663164053;
	bh=wpFZr6Ec6mC6IKX6x+9FjdMqH5FwejnEoaGr0QoP/7c=;
	h=To:Subject:From:Date:From;
	b=gSOCYDZW4Q9yW/3CzILCWqeJWdW33hz2kdfTUlogrvBo+5fQGwQuHRHwhEyN8hn6j
	 K6/IHIRaMVxOPU47ofZixnwlv1mkBodMeCjkkPMV1ReKTjx0DJeUOi8qksZ12ZwSeB
	 vl1U+O23pUGbIX0qZ8M0MyZIoDRjOmf00sH0zOncdddKGT3DhEQaTuAZbjofYg3p6O
	 x5PGpJyljazWv8OodqUiS2kBx7vOv/qmXbSATPboGRrrJcrH3WIV6YnY0C0red/uds
	 UpO3cm9rrZ3QA160tkFFTq3qLKHS6cw4YDteSgX3ow2Dpv0tSDS3lFGn4b/8wF3mU4
	 SmoRLwOPitgYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55869C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316405334.18957.11395629499648489473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5161031d186cf1d29d234ac4d50becd52cf2eec6fd695a2042b200c23a5220
Date: Wed, 14 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663164053
