Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630E417DB
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60B4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695587708;
	bh=ysBFAme7POVhczrTiIefbwGOnggfniG55rZ4Y+8UD8w=;
	h=To:Subject:From:Date:From;
	b=f3yKZC1TLOBGQOlKPzLefqBdYTg1WC6nlTo0Ev2Gpy6TkGMw/3nqeNlTGXZwJeUei
	 oHda0es/GeFOk4r34AZTXX9cDZ8ni4AEQHbNAd/Aftv6r1ya0YDloIaqhUtdqKDlbA
	 eYnPFWwix2J+etTvadQQGrXORISV4pjqDehkaPr0NO+ngtWhlByTD3LBrYcGqVrYGW
	 gbt8hdmMKKxutJ/maLJVUdMrUhmhP8U3X179C2VAZUmTaW5A+7YnuiVHRQ8bOOvMgH
	 uS83K+Tzzh5W+ge1jbsx6yrtOsh+hUoVzVcaxd5O1bp29QAoCsKyRObE0HByr8CZjs
	 yML2BGKcyGN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F4FCE7A8C
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558770870.8895.15577752582462696089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3845deb4d2460d26f16b4c4063a9bf6b51e97f6e1be9d576eca49522f1e3cb1e
Date: Sun, 24 Sep 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695587708
