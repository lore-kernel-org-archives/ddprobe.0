Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02435156E8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI6f0tE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA75C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702972696;
	bh=yiDzcAO0J9ugtCQtpInHMX/XOsXfJvjkZ4gfzZXjFxo=;
	h=To:Subject:From:Date:From;
	b=AI6f0tE26D9oYhlFcNw1ZtaxFNSL5BePHNUjyxWlUS/PV8M/WckPpCYjMorT+2Y11
	 fBL1a41ykFcGMH7lws3t5TyFwo+YvTi9rjMobOc786knNr90zVLlhxVLYwOeO216JI
	 4JYsIza7tE1+7k/snWyYgNmuvAmxZcc7nRFkO/K1uhFzDLxTXZcEEsd6QcHyu27DTD
	 7GvFhcKrCgoJGq7JAK70sjjwWG/Qig/pgAL6FppJGjWjSUvegoOq8lKu1BS6ZcMNah
	 vp+pR3EEHb+AFGmD6C0BfgHTyC88T1qPPvR+hsJ6eo/BVM/kg5eSCTUUjOewaeVObT
	 Rb/m9ZkBdnxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61350C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297269639.4321.11562176414575842085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f98523039da2a65038fbf3e5b5bf718dfb023acebc3e5807cc3b1e26d517bf9
Date: Tue, 19 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702972696
