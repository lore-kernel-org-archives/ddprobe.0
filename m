Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6491910EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 08:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AC94C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 08:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679215446;
	bh=XuQmRK6bJmQMCpPRB2LlZDY/Uw3ugElwFmHc/RKC+Wg=;
	h=To:Subject:From:Date:From;
	b=YnTbag2SZ9YiQ5ibf1CWWqLK38oCHYgHgvTZ+zZ1QBQJsbPRQ+DJTiJ6RQJZqODDC
	 GsSebI1zRZ5QOFoTCSHBviyz0xKREwnle/Z876rpr9d4bzLAlxa6guKslC8eEPQ8JI
	 47Sho0uG2ScvQiuWo6goOkUzZ/1vpO4a/7Q4R+Uq9FdtVTyaSaANQPMBt1Lv2Sngm/
	 ETOWnIlYP05OCtvPC6yUIDxq8Awiq1kTIT/nWx9P7RxMG2JVwBy/KM9IpibzlzZ9cz
	 lvts2qFKOPNJnXIX55u3NaqqIZQZZoaSLG6lcA+FZRpHwyF6rrwBXxJswa9KfTBzp3
	 2cBPUlwWNykLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBDA7C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 08:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167921544588.32754.10083193380228313379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b33e1560d142dce4f86d87a2ae6312f84a6c1417560ea7800430a950c6036f
Date: Sun, 19 Mar 2023 08:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679215445
