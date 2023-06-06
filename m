Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD60174D4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD874C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686070925;
	bh=y7CA8G812oXWdnCSSBjcf0RbTecaLL7i1S51W98WKec=;
	h=To:Subject:From:Date:From;
	b=IEA98OgIx7bhT6RwF0yRCHIAdemGncZHsBle5mFQdCP3hFcE4zk4O2WZc4NA2BeNv
	 /yQp45XvLzWlrQzexdSiFcPr+xlHucJgKPiZNyauFg1jU7KfXJgEnEckhLH7D8pFPL
	 1DKMGRq0lIHjEPmanYehx/yiXo8erH1wn9A4dB2bhG0Q6K6OGvr5Bxw6ynrT8+YaaQ
	 KBGz9/qGxtRXXiJ62FYDGbqivYyE8CktOw6ruUYIVyIFycxPnuBc5duHD31g1Ey6Y2
	 v08UkX3eJhBtxTOdvkoaDWG1lcKO9xpyYoMYeOUM8tYf9MFqD44VxDOmRe4odEjaK6
	 MyMyCOJ53yccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF798C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607092577.5663.14002426722860581474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174c5728c192d84b2305b35f278887fb7d115264d3fb617853388cb4a583cf11
Date: Tue, 06 Jun 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686070925
