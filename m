Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6F1105
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBE7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672367487;
	bh=1e1r13FpDJcNawKw0E0r/X7/GtrCE9oKmDaLgJWF/co=;
	h=To:Subject:From:Date:From;
	b=fU77YZ2B4Xn4C8Hc2OmYIFqYw2LWOzL0Gf19nW8KltU7lR+wzpikIvYRBbV1RVNbs
	 u40Dk/bk4ySRAMm7W16xnKOsCv52iqcIg2iwVo2V+yfqVfAvuIOFgQmPwGfb4u5FTA
	 AcJzLvWCcsMU+dEvNDA2dZkG3Nbv0okv7KJ7h/pheK+dhpzl6rZulfm7P8/m5pHAQw
	 sETzIRI0Mm5oTwTsBBxb12LDr/sWufn59yv0lFSdMgUQg4SEUHCQrSpKDHyQGdWao6
	 lGe7PGUmOO80Dv1FHhfPX7TOeLPeTCmduDAdab+dUWXINw7MqDPl3QPwIHlUuHUP33
	 4CLdGZbGCbrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80738C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236748747.20012.18415294012987996124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db38d6ec17418f019bbd2123c384f209850e893f7e7204ea4988663ddf229b5d
Date: Fri, 30 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672367487
