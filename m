Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDEA7F5
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 04:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0310FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 04:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683867306;
	bh=0nE2+F5bz3KJWGrMe9d+S/3h77B/ba2noZ7s55/v/Zw=;
	h=To:Subject:From:Date:From;
	b=NPqbaK6WSWgGcC7TuA7GfD2nlFCif/AqERQTBM3LtxZOXGJLHp3Ap1eWssPIXp6fF
	 6y0yuo6OdeBkEuPKvQYHJzqHg2QI2RRaqu6O/9eP+QKhO3i4YlCIrhw9ynaIrpUmLc
	 D2u4rxSAR3GCUf99XhZhL40KtpbsYz6O81xsNMG6oCaBWx7B5tsa0kDz+k5FCjpUJ9
	 uLrzzAS82bwcEfUDudXFS/ciTvRZ2UXxBI5PRVX4wtt+PKetEMlxgvH8RNl37bS1OL
	 qADnQg5TnThsI7i5zQErH0x7g9ffXF+qKJYWPfg/cMvaXxDzQuyNFwoz+ABTfWaxLv
	 wUvhHuvEFI4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D151EC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 04:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168386730582.28716.1209373349279068409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c235bb8a47671ae167e9c075d934bfa76711306ced7d204abcae156ceb6eff05
Date: Fri, 12 May 2023 04:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683867305
