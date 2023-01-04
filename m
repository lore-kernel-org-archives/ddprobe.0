Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25F1BA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DC1C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672875687;
	bh=H0+XJmFXYUG5tBi+Ixa6C7czrb3xAeXSR5pSUzs0nO8=;
	h=To:Subject:From:Date:From;
	b=rzyTzeJS6nq8fx7UiqaLPphmw94I608lhIVUZTwmFEY16nA5lLJGIPjauqdlOpFmc
	 evwSYluLEP5mQK5hn7vzNwmOQvTPEfM/T8QccuW63I9WAU5AOBsBUT8tiGkZuQeHjq
	 V8LQfUGiLDsOzzdSprkHDSOwtppvYZr/5DBH9QJ8a+bY26JlwMeOzeqOhl6ND2baaY
	 /3vM4mRksbirThtk0KU8Aw+8HbW1Pg30eZJ0qn6TkmYIk+YlSBCh4OtVX+d0HjjXCg
	 SXpf+/s6TNIVOTLzUj36z0O9Zgak9/hbX/Hibp5g2lQWJPisllZOWHTKokZr/sTj1z
	 5PdT9uXRYclFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61146C54E76
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287568739.17736.10754403454729386529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fbbb43728ada5c58039168c9e4ae000b414ef7d50a39191a155efffb301cbe
Date: Wed, 04 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672875687
