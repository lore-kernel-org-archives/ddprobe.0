Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6487470
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55A0C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680717425;
	bh=kgdD/CC9KunNWteWeXNvUnkhf2JFcnDzv0oUhIWlHMQ=;
	h=To:Subject:From:Date:From;
	b=pAEEax1dOx79RSvBffJPAl65HUYNwvEdvyGJbeTljr1UfqJh2HFnVGwiSDPWtknfr
	 9fNb2aULc/Ipgusq81BdsGDllmapAWfzwEGUvhnHlLx8jEyYvFpnG354S1L5Liba4q
	 IVMA9gTY9s1FVLBDdstK6cCjGV2uEE877Xosisxyq9PPmqvSTRyY85XGDqJfxkh4OX
	 8yiioQzJbunVQ22JWPFZKbM/K49QCTJ2LAzA+WvT7Fj+34x1Xv+d7RGFjWRd/QpPk4
	 nhWLC980zxp6XnniXQGfkyBGnyUWFqSay5ZzZ1Sz3AZcNkbkH3yYuCYuTjnzbFXzGu
	 yKh4cO4Y1W67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B889AC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071742574.9363.12522814302858137995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ddd56ffc54bd8b52b1616d88afa248644a49c8b283a21ccbfaebf18d490244
Date: Wed, 05 Apr 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680717425
