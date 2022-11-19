Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06B0381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702FBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668867654;
	bh=/KySc167TkOQPEgIyJ+d75gGFltAi6K1XZWroDISRFQ=;
	h=To:Subject:From:Date:From;
	b=V5bsoCuertxJeVIZVpCYMD3N9bZR7RJykQimUJC6u8HFshQzCPTd/5Ckro89THoyf
	 944fUbzMU9vVzgL5z+Dn14MlPkppU2QKmxSNJzj+2Kvcd7WBKbH35VqOjLYZWKTsz1
	 0F0HFYb/fhNpVJCFoXeGEu/x/fwqocSv4rgCL9AUzyUGoiJI6gUQKC4F3PpqJVli9R
	 VejSY8NIH8fpJ+HQ9T8+x80N8n9FmD6RiXnPgMB4FdDU/bzStdaJ6ojv69ax1b+kZb
	 15uOs6kjNAOUYrzK/NTdmCjwYF2KTXDceFT3havzilAzmqtHJJ8cU8/eLx/G0nI2zZ
	 i7pRnwZaz7mnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5487AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886765433.30273.4877367691334415568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa32cc04ee918339cdd1a596c677c065e6ab9ac28652d64e33fdcc99c9178896
Date: Sat, 19 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668867654
