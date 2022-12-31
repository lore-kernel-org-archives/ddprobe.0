Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92992C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765A0C433F0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672513287;
	bh=J68Drqpvivz5FAJ8UsJn569U6ylcBwmCKP5XLmksnok=;
	h=To:Subject:From:Date:From;
	b=ga/VliqOICrcZ8Ukdh9aO48VwDAC5ASbo1q3U04uM1GbgNsZvWpYpoOwXAeVhFzoV
	 bBC9u32Vq8dHSuPQWU/JkMRflfD6o2ZQWkgeCUMZmIYi/78kD85+6wtcLoiT3svOG5
	 78K3fACgCFJVNx9hAgSI9rXqWt6PZYAjHu/eCI7wGDr2OBEyzhwKI7MDlC2PZ5IjIT
	 pQMY5zsiFQdBw0lLZTDjTzNgS0EzxUxaKs2Ss7CjNwDtFj3j5mroH6Fkk6a4KZI1KR
	 6c+HLs/K4mEtHrFTGmHsn5I79RLRtYfRaubzzH3JI1c6/uKed02njkvBJyjo51L8kW
	 LtkCr2j+wP+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E073C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251328737.17735.2693849337672047663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc2482a107412e0481eae26c44744553af7d1ca9744e634f3d484caf92dae31
Date: Sat, 31 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672513287
