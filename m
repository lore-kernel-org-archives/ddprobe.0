Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A902AB55
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7179C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687291328;
	bh=cQjAhfBDcOSSWnEbUfhZQ9jo/OX/G2+j6XIZUfmoIug=;
	h=To:Subject:From:Date:From;
	b=a+NeQH6dsMdl0w32swprH7MVOovfDaqzSUXGXlYw/HoATZU2c1krHvhNvb9YzA4IX
	 Jh4PHSl9Jxu5IjO/ek1atYjl31Vc5uFMOxawbjBwSMsb8qDQ+JC1L/ztQ09KU3TxwV
	 X8uYDxkDac5//7kuUj7O8byh/HjpHGvWfp4dmKr9SNUvG9zTbv4bAW60lwACvDcrif
	 MNNyPlJO1H+j5aShHgyB4a3RECGptTufNoIHf/b5cbFzzf4FxSJBzSGNemMKwrtIEZ
	 31jTXADTw8fkO1uKBF4tX5+/QNiOW1S18hxxctvZcQEwpjKfdGnt6eOW5qQOgC7Q3b
	 oIQmDe74X0lWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DA6EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729132878.22431.1085125079859687819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0119db7860c064c6c432a48554119dc5649feb87537f072c0d128c7305a41006
Date: Tue, 20 Jun 2023 20:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687291328
