Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B58193
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED2FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673317887;
	bh=9OzjX6KLoTMe4E3BXj0F7iBjgEPKFklHFtYb02X3L94=;
	h=To:Subject:From:Date:From;
	b=q4t5ZQcscw6pPoSyqab/K7J+9ReS7Tc7D0nncyXhtSfVE0GXjOw+PrupTxR8Kl0Bx
	 S8CCJwNqAdhRxePU+RpCEWCfkbJAJHCPQlf/46wWm+H6sekC5YRjkqi2598cnlmcm2
	 PCxOJ/c7SxE/cwOtq6p5HOXnq1XwMb9QlYdVZWP3lJ7G3z8w/DgbohWYadkPqSNzC7
	 99l6gA4sFjs1kcOymRQXcCu6tOl0zEOEvyOmhW2hoOAaPcjQVWSoUaMH8i1uVrWKDA
	 C4JgSElrj7muVABkLXrvcI33NdY8QRN2rwX9huHvuQSwGNOz/6r3G0ml1mHK5h4NLl
	 y3oF4G10GM3Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A4DC5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331788743.1414.14137877987965119121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e615b267ae933fa00c1a625004400e97014fd5a2a4cde12452fbf5755c70be93
Date: Tue, 10 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673317887
