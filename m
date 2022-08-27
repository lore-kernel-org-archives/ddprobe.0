Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A3617C5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F87C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661580052;
	bh=W+xNovxsy/ggIlij1Pv/hjLSNW/48uZutYbeHoWYRHw=;
	h=To:Subject:From:Date:From;
	b=GRc99nVemPAdMscOV9QgfKY4JVHPS2eTRPo3w2SthzIMI7uQK/cyObTrkblO3C9dx
	 domLnuUb1cpV+u7f+OBEHUDVcf/byFcgJX0jghVRZ1XOjTdQq/0xocJ03MTWFXNRcd
	 LIGZBmDhO6ySNmX31GgjnWYIvyonFN6r961zYZ2v0sURxVBSpuS2CtOEr6VJx9fHzW
	 hH2MIcn3DaSX0nn7agjDnYBvDzvOHClAvA2fhr3xEqd/xYXojIW3QrJbw9NHzO9Wev
	 rSdoye8wGk9pSoKEpn51eARPrNY2+8Fhd6DdmpvM69EWDBzVuLk99ba+2f5y9BH8Q+
	 oc15ex9YQhS2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552F5ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158005232.28841.10665094124145776655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f47b2755516352dbedd301cbbac5b6e59d277d9e6b5e51247e2bf2bb92e1836
Date: Sat, 27 Aug 2022 06:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661580052
