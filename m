Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8184C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71208C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661543452;
	bh=o31g0iRa1geUVpiXBy0QRu8Lh0wBMWPcElnd02s4bAQ=;
	h=To:Subject:From:Date:From;
	b=drJT/A/xjsS4k0U0U8XPudlICoBxCQNyGqlcI8n3pK6UROAqO7OadlBPkaHt3vEvy
	 sAkNQPIB4dqD2rMOBYhFd5o2BIKU17GurCpZbegBVSu6+LnyP5t+JVTN/8AD4mL+CM
	 RqU+cxk3ge0lc6g9dSxuO2XMGPGTdtgQ3svZW2Wt99r/gE3qb5QrHgRBJ0C/S5mwRp
	 l/kqAghiXs+mJAcIOi/FeSyqrq6oiLt4c7GCp9lGR66CqE1+9VhwM5RqRpv605P/Aw
	 yBTAyJbdeGuwYFqSeb+YbPgIRmfkcfN8Umwmun56XaJ39Sr35ElQ1TM92yiDF46RC2
	 yRQT+RMkV/ogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554F8ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154345232.27928.16591970535898999378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0801e739d5387bd558a6bd435e6078579c418839b5407f507a8fc5bf54e8b39f
Date: Fri, 26 Aug 2022 19:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661543452
