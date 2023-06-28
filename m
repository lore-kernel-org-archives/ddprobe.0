Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EE67E2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D921CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687914788;
	bh=WPj9kzqSdz+RcpuaJi30v51tJiaBSoclg+dAFp0IoUM=;
	h=To:Subject:From:Date:From;
	b=KOklX4hhD0upuU0VBbcJEK2Q3PC5GtHiO9HFZwlfI5WDP0I5yMs8EGO3tyc1OttSm
	 k4jFXFw+ak4rC45ce1sl30OT/47vCupxsZ3p5UIdaazQeVpDq7ncxsONAjVJKVb/rA
	 82YM/qjmxMM00H229RY9lLgNZ6t9MBoE3L2zWtohgJUF2Z74lFTpHuacD4E4xkp20f
	 t5M2Fvx8mNAO87qDsq4hPSvAHlTIp3jGoy30Tg66mhESIqmdVbVnG4BTxm44U/WxIh
	 hToXLX+3amT8DoOwc7wFGgCwsTTt6kXlRta0/yTWGqI2iB9KLqr0+uWXjgtxSMDvOg
	 GOiP4H2HF37tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E14EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791478872.26008.16190495043489842599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce12ac8e7f4ba7b74daa41ed6bd7b8e6c977c395ac4f0817d59e0670e2bd005f
Date: Wed, 28 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687914788
