Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39D917E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85933C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668822054;
	bh=91dFAhHlaxEMR4oLKZoI57OC8eudmst89m42+OvWb+o=;
	h=To:Subject:From:Date:From;
	b=as/u47TpjsYvA3gzTZgBVvpTitbsOJC12ZP2ZVBrvwJh7VAKwlr2QXvgFhPNTR44f
	 KZhEYqYxFxGrRBuG0bu8n3ENIr4ratKtpFJuUZJEKLBYj1nQDYeo3tDSEQ0XKnN5ai
	 FiGvID4ro1m6gAUhfLNxt9gLAeegIySstCaE5o7sbJhA1O7idILUFK5H1/DvJKJcQO
	 cZwDWrvtzhiSPH2lk6+0KoiVbwUk+TPlWh78YjLbNMSedowGreE4OLg/Oc3p6DK21q
	 MPD0sGbKQMA6H2U/6KrUzvZwEpMABu/Da0StEY/s/TO5BzFPUdNBgUBi7yiNHhGSW2
	 2ZELujPlPiHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA3FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882205443.26165.13761805767079246830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a28154e4406fd375fdfc8bd0568c2dd745a109d3be28140ccca660e22be1395
Date: Sat, 19 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668822054
