Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED3E8468
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AAFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691782988;
	bh=1Ph/rdcFqE/LErL+biAlRCRGOimit8hwSWCxaAox/dk=;
	h=To:Subject:From:Date:From;
	b=QA7qOxvPXbRIB4+YQq77GL0ajfCxacPoVt9nSDSAmd26h8WEFO7MFhGXIcH6IMkeo
	 jlhE5fAvmZROA1SahLq5jRVPBOCM1tMOsyjnZ32sGjDVjpvtvkFD5AXt7iWVJItfAi
	 BYPs451uv3VXrTQdAuS38hnRX8eTOtSjTQDasIgw7oNKH0pJGWmb7AI1csDahhjfiW
	 SHf17rkaLNARItGRA9dBoU0+b77TYHqxz332qlsvnDyddTcomtYwnYB0O//cDct5Fn
	 gb+8BCw6xz/MLPuf8FKhtEg597o2AuUa8mNEe5t0DuTE8TtE0VE1sqXDhqx7fqTjHY
	 8AyIAdrYrEogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E3C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178298868.1659.7764373635267157946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836795bd555563c9563ea31cc77cb7800d9a4fcdeaeb4c0dadba8c814efe739d
Date: Fri, 11 Aug 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691782988
