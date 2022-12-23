Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30568F63
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E71C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671809487;
	bh=44ZuJZzc1rp5oSrtABisX8yGGe9aGNf4CcN91BBtOlE=;
	h=To:Subject:From:Date:From;
	b=Tlz47M/ZYDmuUa3tdwJX04Ir8Z1zSyg+AFN/6CQtqP3e24IN9pasM0taF+m47R1o7
	 U4IY5tM9R21onbXHAkbr7gBIfmjVTLJYY/ew1VJ8uRAOVPFtwvDexNogHf84XmZe3w
	 TIDOH4wo6dc+vwjV9vnIF9nivxx7LwSmOvYcGbr2McV+ibOXUw4O44rnEZMVDbSMC8
	 b5yAVBC5UULr7T9oZDYf1/M5z/fqs/GqlrzhkoDtLM8x03JOeUTmMuSHmUBncNbdf6
	 ONHPoACDFyvROmQmbr8Oxg4vtmy+bZmFvXOxk73KIhOWt4ufbndOOsph0kGgYprnfh
	 ftRprawjKB/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652C4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180948740.24891.4915994986268550170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfaacae6188027bdc1a8e002552b030e2dca91fdcbed3b54fd7752acca0576e
Date: Fri, 23 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671809487
