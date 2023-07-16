Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69792EA0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 16:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE853C433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 16:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689526268;
	bh=taGJWvKuMGEH1ckb4CeKK1Noa+gTc1Z6oUkBLhLM5Q4=;
	h=To:Subject:From:Date:From;
	b=RzPBJj4EOMaktYjOMIlJ8MKzUBo2Bo19qE0ezKJR6cBVOlumWRqWTfLHFmo02mzF+
	 Hyn5NaNs6MnZX7TqwrbJZPSsnV22MvXrc65jQySiK8nNgPM+ZW5BgAVwE9QqbCb4D7
	 KvVVm94mBBe/krgkXmeOHFYUSa4XQWpg+WuH77m4V22JsbwHbkuylojpiD+5Eev2gH
	 xTAVf7e+Atnt5j+h8yb1QD1PaGewLeMJvxreL/Q5FLktiz1l/ql5fCfC3pTcgC5hzy
	 d63N+18LS3KrdTlCOFTNomspQwA2NCUxHu8F2gqPMmoZO8VlFSFSYpDNcm5HWhP85D
	 UM4J9jK0NFcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD78EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 16:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168952626869.7480.4194900184850639033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1e3ad656109e1e15f700179e66676845a1ebf49688a29865fd5c36ca350181
Date: Sun, 16 Jul 2023 16:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689526268
