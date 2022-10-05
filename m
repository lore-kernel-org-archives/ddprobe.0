Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12C436C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6BDC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664965853;
	bh=QvDhzknfs2q7s+djq61DfL3VNXQRSO9lPB8Zb3/QS9k=;
	h=To:Subject:From:Date:From;
	b=u65Eh5pO+kDqwiS9zBJbKB4HJXBTq/ccXq2wPSvSmlTjubEUSUiqMVqGlMpUp8DuH
	 zkygoQeKzsdgV/HJEw6Z/1YgoKC6v0hyaSx7AaegnmF7XUTkiHPvnY7a9q2+Xe8pC4
	 UzErPg0Mwd9D4RzppZGXXSa1PVtvjH5l9BDDx9il8mJF3QixrnVXhjMuKDRSpP2T4I
	 lP7rsQvGHbIaM0n4TGeyp4wql4kf2hMghVR5VXpIes2UUyHfG1cRnjrr6wMCnltIlF
	 c77dBokfAqAMMAMZhFsENppSA2ZOErRGPTtXskFWTSLZIY4a1Iw+GvLEYMW6PjmRRy
	 aGwzz98nKhSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525C8C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496585332.26406.12933364660668499447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4922b453561ec1b4cf630056d34fa391355a4a6702e8de132793f08259dd59
Date: Wed, 05 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664965853
