Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D3C5C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6F1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661797252;
	bh=z6QaKhM/VzaJjCw1BoUmGjv7zdkgAk/5X0P97f3x1d0=;
	h=To:Subject:From:Date:From;
	b=cKre76tv9506xJZRFgFB5mfzdoE+JMFs6weZRrEHZ3vviGdLO9iVnncyt3WqGQ0m2
	 QpLvszX8l+HbWrCz+u3GruuzDmSagaTcxiskAR+7tdd2oLQ33uEHBv8mzm9yD5LXF9
	 n6u6q5Z7NYF/UBlDFFRbdDehfdIpigMqp4uUd0ZgKFJsmhRNdQN0yGc4JaFUanYGP5
	 0wfg5RA5iIdDeqeyi8WLNAh/XLvTiEvVU+PPHbyT93dy+I76M5JWi46JD8NBnSKibr
	 nH7RJ1giwfqzyrV1xTp4QBc64lw10o1wxOAag1mFjrHsS7FZqR+SdP4Ei7ztPlErk5
	 Kn06+d27EMwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5434AECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179725233.27305.1732788611756679460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7318e69d4a31210a95e9e8a867f3c11313a6252426b9b9beab89074b3cefea6e
Date: Mon, 29 Aug 2022 18:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661797252
