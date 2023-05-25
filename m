Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAE4259A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685056505;
	bh=dfMjofXA3IyjWzT/pXCi7EHW/sZZFNxsV3FIc8Xptlk=;
	h=To:Subject:From:Date:From;
	b=nookBoTjw8k2j9BURddL2hyCmwcj7bAVPJhcWIplRVcq7nXRzXDmuROzJf/V3ZbLY
	 5D2DUuFdzjaOVla/xe2O+oajlEHRvydl5FUYmtdWJgKyk4p65UrCebhnTkW8n/w1GP
	 d4v7ujye18WLTj+z1eVJY//DrZOp+wbKw1IqPPI0SPwARNnYNpyXIZR422FDAfHkkw
	 qZptgOyrnLUzmIXRa66/0hC3Y5vsChUowasH2bVbOas7ixHlnXNut5b/M/8dd8x4y8
	 Lh4srxBmuoYy9kU5QWyPdDasinUsjxuH1IGZKoxHeS16Gm/yLBncnFghfVozWVObEe
	 GISd1AEyVZDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FFAC7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505650575.13965.15154539387595300384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0053b11ef17c818fca312c849590f49861611c66313f507af28d4e364412d04
Date: Thu, 25 May 2023 23:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685056505
