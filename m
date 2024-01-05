Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C46C1DDF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxzQvIz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 842A0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704439696;
	bh=x+naDn24RB5hK8lnhUUsaOKzmT5Q62YvQbSuk+jj2Qw=;
	h=To:Subject:From:Date:From;
	b=uxzQvIz6JcTz9Pz4d5FUED/wW9wWji+pssAsOcc69K7eS8uetGgvMVAFtrapUUUUi
	 8vJAU3aBpQBaAq+I7A9upOZRcwPBIlOeKSwcUUhuzxbT/6DuaCXseY9VpkyaJi//8a
	 2KWipoymI+MN4AZf2qNcR0EtHlwpcvZl0QOTNQ26kiTgjMuaQxmaE3QXU5k3ObBPPs
	 E2PGjGBJqcCbtWVB01/NuUfiyYc1rCJZZ9J7ETzQroSeTWUpA7uTi8JNYF5x0VIZAs
	 ItQNPY+YaLJF35aWVeYVcHNhMxvJ1GEcIG0Mx8/3jUltn7MzwbbDs+5xpzEMMs/svc
	 8Yv9fEPEYfiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E1CC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170443969640.9674.8693206363212287464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91fdf2942125056214cca276b3f70a7ac93f02af1b46357d5e4613e1cc78e99
Date: Fri, 05 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704439696
