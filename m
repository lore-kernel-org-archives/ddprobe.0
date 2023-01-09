Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033EA1FC1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 893BEC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673236887;
	bh=zLhyJwuwrUTiOK1N7zRhvj7tabVU+Ra6D3X+I2HFvwU=;
	h=To:Subject:From:Date:From;
	b=L6PgXYMYwiRkGLYX+5IHkJT7j2wb5sV24EreEJPM9KsSeLVCMYKswNkgqU3UiMlAv
	 wL+V6PiGU8wmqmesiIWx8LvFsR93aetNwGvc5axFFsBZGkl0+Q8eXYEeGx7tP/rYEF
	 OundTTQF1w8RuWS4iULoaF+S3T1XZRukVUrcQA2VMqGKzKahRQouWlGtGcey9kqwEh
	 MSuEVDMqjhkmK3PPxKPdzPEfybGpRW1cCz6cEdF9G3MSzwB4HRzJPZFEyM6tW9b/fN
	 F2cJxKs/++v9SK88JetVLdZFm4wTwbxWe4FlKXyyysvuwYL7w6KGyymA7xXTu9d12m
	 fOZB1sTidibEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B466C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167323688742.16886.8234637712229863505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa41fe6c1d48b32465b0f9077a53e9e3e661bf87b028a1c39ac8dadede5be16
Date: Mon, 09 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673236887
