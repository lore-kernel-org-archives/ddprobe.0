Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916654C87
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F54AC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687902189;
	bh=Z2l242eEoUQchoYVUXfuAyQMNa+rVgpsvWOppIY43NU=;
	h=To:Subject:From:Date:From;
	b=hiM7GhZnD/swMK4Z12Xq96MNqeJ0BKiOX9CtD9kfH5SMpkDzBQFtfUWtXSVbxBIUH
	 vOhv6YggbXpi1W1NEleDYXxKaxHeAdWJz3+D77ypZGo8M2g9X4D2xRstjUwjcxJSkl
	 IERj9e3dizj++SF0/WjwH1c+H99jf+LLcQBiv3JhugwkNDqXC6U7si/bvnHZY9zqx4
	 Lj/7V6aIFDa1Efln+mMYbTbbfoUspAYTAce5RyW2rNPzkMmoMQQG9tbXHeLMkFPFZT
	 F8BSu2rUJu0tbBNamREPIeKJfRB3h3pbWK3EcszX27j2hO1DP2eTsgolE9QK8lOC4J
	 gIAoG8aveZ92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA972EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790218887.21321.4787961278920913347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c402aff975b7b36ffda58b3c6f024934b1a09cfee84a240d65f94d18876005
Date: Tue, 27 Jun 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687902188
