Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D250A381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836AFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668865854;
	bh=9XZVPIZ/6zCi5L6RQUI8gh8qV5rBS+AGzNWReGxGAoQ=;
	h=To:Subject:From:Date:From;
	b=jKk5H5MJaV2we9Tu9GamCZQ32xp6RVfYrKk1zX0PwXflhIRtLhjNuxCG2YE29jsRu
	 PGFqEt5oFOXrZBQCfH8LtCsfP5eD8h/Pc8/nV0Ch73ZeJmZBMSKN3du235ZHFgidBG
	 n/uel4JhPrgCVK0+AfPijgZK7PYvOo1tLx68Qe/O4xeQAgLw/XMDrohXQNZXLPD99T
	 l4SrjedfMsG/1+FkDW3wUB5L6g1kuEuyuI/+SPEvMI2zGrIfIVZsFPswpbbLeyIumF
	 F1xeOd00AO0nLUvDotxWAxuTfPtSpDjJ7FsshKyZN0VuwwjmE7Dags2QAdmc7Fq+wQ
	 HmODrsZJdUipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E09DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886585437.4080.15491436186072760790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789f9a768f795b575d384a6ca4f76286b2c9e599236e4999332039ec91c78222
Date: Sat, 19 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668865854
