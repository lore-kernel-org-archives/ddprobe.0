Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41557E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8F7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661936453;
	bh=mdh+5WMdb1+WT7S8kj1jvuT98HnDSrpiGenh9oBZqnc=;
	h=To:Subject:From:Date:From;
	b=DV3X80olM1OvD93MhTKkpIL9HXBcVLKoQdLZrpqtp1g5QRPMbefBZ9iYMrPQQK4b/
	 MfbbMrDKoaGb3LzZQIL6CMHlE06TBDw0RsKWDtRA4TMrlntjMAVEdp7RRJGDtkZkLD
	 ZdCrZFfYwobUZPUUYjvePC7je+xfzSZWWcMk9d31eFLWtJBOtB0yqAsBLvs69x6Hro
	 WSE3QshWYsCZ2e/NQNDSgLWW6vNH8NHeDI3Yul/Hj30+lxVrROG1Sqi6Ftx0fAWtbo
	 TDWTwQQQ3kXLgyaKndKp9220YD/yiJEWmxE5SPFDj5HpxR5f8lezGHx1LJmKqrpisw
	 ywJB85gPGcShQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5638FECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193645334.6174.7366313464318433339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5eeba1438d8704765b15efaf8a08f726343d3887061d2630c4f68047e46fcc
Date: Wed, 31 Aug 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661936453
