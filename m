Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8748F78
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3F0C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677018065;
	bh=+ni90biucRIIdAifInGFgFU1Dg+vi3RqOB3+6S1nplE=;
	h=To:Subject:From:Date:From;
	b=mYjhK2RH+RzjNKDXVFXyMcPmK4zBOcXnzkeQCxCwNIBztoj0KqSMU8A46HAsTLb3Y
	 SLZB0OaiHImTS2OL6UeMUS+wq52izEWxdnJnc+pStpKyInGBtJ6UfxxWuyAB/vZVKn
	 D19QyEI0wWDhPwL6ZVuGRr9i6jGtCHPFVvjYbeQSnrf1jqp5aK6RQ9DIcvyVQ4VbXY
	 2xdcXQmcUHh1npUoMYYTBLMkDTR0edPHxQKRwSas2Qkpj5WAv0wq7l+0HsZTGpgkxq
	 0hISYvztrtWxwULab+tOg5Vwa2eVg6FEe15lYD9FbPdgefZWtrPMNVlajRh6DKrZbl
	 dNBZYo+uooytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE03FC636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167701806576.9413.18297385400527932076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f5e0d46dbfc2d06c240ffd8057e3399b79486f0fbd65396e2cce8b053dd5a6
Date: Tue, 21 Feb 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677018065
