Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E88D63A9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8984C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687026008;
	bh=hbjtPWggi8rXhg5zCI6Bz/eTFGVHEWJRRP39oS68aFA=;
	h=To:Subject:From:Date:From;
	b=k/nevZQ6qzI/VWzR9gpskrAJLtndVCoNsuucO/mP81MArG/sxSsXLVKb8//zAZQaE
	 ZJyl+x/eKzwV/uj321LCT61yspSTg1uODfgaWk2m5TO+O2gRaR7OGu/TBbV0CM5TbI
	 p4huCFqU6IfQjxynikMW65zucYezRvtCyd4+Afy0b9nU/iBbWN6Tihpkc0q1gquVGG
	 M+zd+HcSJlYOSjMGHt3X/H1brvWlByUrsJC1I25JtQ4swkHaysmH8xQrfMrAxRY2Qy
	 Q7gSy33q4GymdOsnPWo0DOo4vlt0SYoNDHJG8yFk342xlsRg9Lp8rpe1OQWGopcIw+
	 dZ3gcDMhfUMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB95CEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702600867.11910.6828130062484269000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38ffa2982bb8dcd6b74140bbd56f9e80cf2950942cbf19234b9f5c0ecbced0e
Date: Sat, 17 Jun 2023 18:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687026008
