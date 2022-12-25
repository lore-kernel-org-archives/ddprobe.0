Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36BF2117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3C5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672005687;
	bh=HaXF5u6bpdoFeX9+MtpdSHjbmRuMJZA687He86FI3CI=;
	h=To:Subject:From:Date:From;
	b=CM9zTsNBVOS6p0KG+V9HHU+fT5JW3WN9pSkN80hYnV9UpGk3H9yZgEvfCFWgpdQFk
	 XeQAiA+plFxpgb97ZXJe1wq8s4FTO789/xXrTWKCK+OF2rKvI62S+Me3/zM00WRdaW
	 awtKMgvnche62NXqWa9XUROKtaBaPPqT8NcUJjw2jiBmmaHDcmM65p4VuLFdxLWw8n
	 FD4sW0ArTcJLuq3BWfbCOe4bwL0cCfXKXdVyMUU1TIEh4bWCqa80gWmJFMby81+mEg
	 j2mjh1k2c2RG6rP6OeFYnOifTUKQWQxd1IIslHLcQHTcmFr4pJoBpOedUqX7Ne7lxd
	 PhE2je2UwTkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76666C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200568743.5496.18436928207084266761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d077d3641926fd624611529465391bb2e54d660c2e26350b6b7dff8dd933f1dd
Date: Sun, 25 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672005687
