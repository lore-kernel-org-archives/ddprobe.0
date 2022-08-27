Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C306A15A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72580C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661573452;
	bh=lUIOp8mk+esdGWetOjxlIMsweLko6lXgzAbB64KhjEY=;
	h=To:Subject:From:Date:From;
	b=KqfSC0kou0R4/LMab7/Vsp2eH2IhxIzBMGE6yyZZi2ftMHurDNwVn56gLvuXxhtH/
	 HWfi7c/RE0HYYlI08/FBdDLIOBr6fSutiVv3ESyqU2PjQkSZ2ck29VMHa4JglFemgm
	 wWYV7cUwMo3lgelnFLbyNm+fGOtrQ3lj2cNgfOX5dn+YTMmkMbTcEMCLIunGfuz2US
	 11AClSUFbnPPlHVUgsA9mCH86tqZ1+oFB17u5h/mMZ5PnVWRWbGQt63Qnn8xCH8qWA
	 Fc/XKqd52AI/ZfkxTK2JBU+KdycVDzSiUSmmsMtZXJ8fUWmmeNaXL0eytaBHNYRl6n
	 LG5geHi52mOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FAAECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157345235.25411.186195095112048013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef5045361ce6a696198f0765f08d2593d9301e2f4b50195ee43291c7da86235
Date: Sat, 27 Aug 2022 04:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661573452
