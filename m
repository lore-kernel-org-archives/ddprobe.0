Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D163B79EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBC7C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670094654;
	bh=pMYKFQ7Kg1LaMaqNtnMdGK1AMYThl0DsikbsOZwl5yc=;
	h=To:Subject:From:Date:From;
	b=YidfyNYMo0MqsyYkcHBUwZ+wBJYzEUbXRmEKX6Cg7kpNxXBJGAFCBJ6cJd63CkjL6
	 LOFboa++N1MiMBtWoCp5R8Vh2RCQQT1k4J+CEZdDebpFZeCdsrtpnBvtWbEEl4rG6m
	 f03RPBRWwHhH3k6fQOJmSc3E+TPXVWXUYOuTi92rzSSHDlYga1Bzo72B+T0wX58CGS
	 3BIeGAxfW0yehdK86u4Cca7kldYDlyzafXAuMduSr84PgPT1K5UelID3/qAiwLeSfE
	 kUoOiiBRBDerFUsx7CjjnoJbTmFGRoePj5KrYE1TDaf0uc5SBn8Aav7T0yJ0CGd4fa
	 k/UBiU9FqWD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F5BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009465432.19211.8116997822034364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486b834402337712c726c0ed46b235ae00bfdf9d8275019a41c6e4004e0a9940
Date: Sat, 03 Dec 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670094654
