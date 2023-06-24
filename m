Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659D2211A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A24C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687599188;
	bh=1AAPuQMcqh26ea9/I8pUUGqI3Vqbk8Dpv34kI03fjVg=;
	h=To:Subject:From:Date:From;
	b=jDkQllWmj5GSiUq1P4ZanCYB0f2lm93fuatJktEHnTmpouavSZAVTZXOAU6pvTjbW
	 x94XAZkX2Vqdf/PryHXr4t2Nue+212/g92irY78et/tmO6XTYX+uWbPk/oNZlPhTmr
	 /i3olR+oGOqT3PLdYY134Q860i8IBsCKAjhknk11AVmAWhb3Sn58YVb7cx4tfD+WF+
	 pGr3RQth+7t+wpAQJiGJv/cPx0wJ5XCJ/ofuApBNfYlzJvlFvFH/W5jbzhXJ9fmARI
	 WxxW5DFNaI3s5t/eb267/qt4cBk9tL1XrRb/AMhNKXW4eNVdMvzvwfRfgNmvhFnBKg
	 HmnVbWpk6IvTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A14EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759918870.4332.4171886982173811602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afcce459ca14e1052bdf7bedff23804f64ee7a45d12a57189368c0e111807a7
Date: Sat, 24 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687599188
